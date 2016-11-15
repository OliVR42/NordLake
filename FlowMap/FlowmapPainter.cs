#if UNITY_EDITOR
using UnityEngine;
using System.Collections;
using NordLake;
using System.IO;
using UnityEditor;


namespace NordLake {
public class FlowmapPainter : MonoBehaviour {
	
//		Vector3 newPosition;
		public Vector2 uVHit;
		public GameObject renderCamObject;
		public Camera cam;
		public Color backgroundColor;
		public RenderTexture unfilteredRt;
		public int resolution = 1024;
		public GameObject brushObj;
		public Camera VRCam;
		public Vector3 camOffset;
		public Shader brushShader;
		public float velocity;
		public Vector2 directionVec;
		public Vector2 oldVec;
		public Vector2 heading;
		public float brushSize;
		public Vector2 newVec;
		public Color clearCanvasColor;
		public bool clearCanvas;
		public Color brushColor;
		public Vector2 oldHit;
		public float strength = 10;
		public Vector2 uVHitStrength;
		private Material VRAA;
		private Texture2D screenShot;
		private string fileName;
		public	MeshRenderer gMesh;
		public bool saveVectorMap = false;
		public RaycastHit hit;
		public Ray ray;
		public float opacity = 0;
		public Collider gCollider;
		public KeyCode key;
		public float currentOpacity = 0f;

		public bool useMainCam;
		public GameObject navCam;
		public float cameraSpeed = 1;
		public Texture2D fMap;
		public float vectorMultiply;



	void Start () {
	//	navCam = Camera.main.gameObject;

		clearCanvasColor = new Color (0.45f, 0.52f, 0f, 1f);

		GL.sRGBWrite = false;
//		newPosition = transform.position;
//CreateRenderTexture
		brushObj = (GameObject)Instantiate(Resources.Load("BrushPlane"));
		unfilteredRt = new RenderTexture(resolution, resolution, 24, RenderTextureFormat.DefaultHDR, RenderTextureReadWrite.Linear);


//createRenderCam
		renderCamObject = new GameObject();
		cam = renderCamObject.AddComponent<Camera>();
		renderCamObject.transform.SetParent(null);
		renderCamObject.transform.localEulerAngles = new Vector3 (90, 0, 0);
		camOffset = new Vector3 (-100-0.5f, -100- 0.5f, -100-0.5f);

		renderCamObject.transform.localPosition = new Vector3 (-100, -100, -100) ;

		cam.orthographic = true;


		cam.clearFlags = CameraClearFlags.Depth; 

		cam.orthographicSize = 0.5f;
		cam.nearClipPlane = 0.1f;
		cam.farClipPlane = 1f;

		//CreateRenderBrush
		VRCam = cam ;
		VRCam.targetTexture = unfilteredRt;
		gMesh = gameObject.GetComponent<MeshRenderer>();
		Graphics.Blit (gMesh.sharedMaterial.GetTexture("_FlowMap"), unfilteredRt);
		VRCam.Render ();
		gMesh.sharedMaterial.SetTexture ("_FlowMap", unfilteredRt);
		clearCanvas = false;

		gCollider = gameObject.GetComponent<Collider>();



			//gMesh.sharedMaterial.SetTexture ("_FlowMap", unfilteredRt);	


	}
	void Update()
	{
		
		

		if (clearCanvas){

			cam.clearFlags = CameraClearFlags.Color; 
			cam.backgroundColor = clearCanvasColor;
			VRCam.Render();
			cam.clearFlags = CameraClearFlags.Depth; 
			clearCanvas = false;
			}

			if (saveVectorMap) {
				SaveBitmap ();
				gMesh.sharedMaterial.SetTexture ("_FlowMap", fMap);	

				saveVectorMap = false;
				SceneView.RepaintAll ();

				UnityEditor.AssetDatabase.Refresh ();
				UnityEditor.EditorApplication.isPlaying = false;
			}

			ray = Camera.main.ScreenPointToRay (Input.mousePosition);
			if (Physics.Raycast (ray, out hit)) {
//				newPosition = hit.point;
				if (hit.collider == gCollider)
					uVHit = hit.textureCoord;
		
				if (Input.GetMouseButtonDown (0))
					currentOpacity = 0;

		if (Input.GetMouseButton (0)) {
					if (hit.collider == gCollider) {
					//	VRCam.enabled = true;
						if (currentOpacity <= opacity * 0.1f)
							currentOpacity = currentOpacity + (opacity * 0.1f /20f) ;
						brushObj.transform.position = new Vector3 (uVHit.x, -0.1f, uVHit.y) + camOffset;
						brushObj.transform.localScale = new Vector3 ((0.01f * brushSize) / gameObject.transform.lossyScale.x, (0.01f * brushSize) / gameObject.transform.lossyScale.x, (0.01f * brushSize) / gameObject.transform.lossyScale.x);

						uVHitStrength = uVHit * strength;
						newVec.y = oldHit.x - uVHitStrength.x;
						newVec.x = oldHit.y - uVHitStrength.y;

						directionVec = heading / velocity;


						brushColor = new Color ((newVec.x + 0.5f), (newVec.y + 0.5f), 0f, currentOpacity);
						if (Input.GetKey (key))
							Shader.SetGlobalColor ("velocityColor", new Color ((0 - 0.5f) * -1, (0 - 0.5f) * -1, 0f, 0.1f));
						else {
							Shader.SetGlobalColor ("velocityColor", new Color ((newVec.x - 0.5f) * -1 , (newVec.y - 0.5f) * -1 , 0f, currentOpacity));
						} 

						oldHit = uVHitStrength;
						VRCam.Render ();
					}

			}

			//	VRCam.enabled = false;

		} 

//camera Navigation

			float scroll = 0;
			if(Input.GetMouseButton(2))
			{
				float displaceX = Input.GetAxis ("Mouse X");
				float displaceY = Input.GetAxis ("Mouse Y");
				navCam.transform.Translate( -displaceX * cameraSpeed, -displaceY * cameraSpeed, 0 , Space.Self);
			}

			if (Input.GetAxis ("Mouse ScrollWheel") != 0 ) 
			{
				scroll = Input.GetAxis ("Mouse ScrollWheel");

				if (Input.GetKey(KeyCode.LeftShift)){
					scroll = 0;
			//		PhysiQ.DrawObject.gScaleMultiplier = PhysiQ.DrawObject.gScaleMultiplier + Input.GetAxis ("Mouse ScrollWheel");
				}
			} 
			else scroll = 0;



			navCam.transform.Translate(Vector3.forward * scroll * 2 * cameraSpeed);


			if(Input.GetMouseButton(1))
			{
				float displaceX = Input.GetAxis ("Mouse X");
				float displaceY = Input.GetAxis ("Mouse Y");
				navCam.transform.Rotate( -displaceY*2* cameraSpeed, displaceX*2* cameraSpeed, 0 , Space.Self);

				Vector3 angleCorection = navCam.transform.rotation.eulerAngles;
				angleCorection = new Vector3 (angleCorection.x, angleCorection.y, 0);
				navCam.transform.rotation = Quaternion.Euler(angleCorection);
			}





	}


		public Texture2D GetVideoScreenshot()
		{

			VRAA = Resources.Load("VRAAC") as Material;
			RenderTexture rt = RenderTexture.GetTemporary(resolution, resolution, 0, RenderTextureFormat.ARGB32, RenderTextureReadWrite.Default);
			screenShot = new Texture2D(resolution, resolution, TextureFormat.RGB24, true);

			Camera VRCam = cam ;
			VRCam.targetTexture = unfilteredRt;
			VRCam.Render();

			RenderTexture.active = unfilteredRt;            
			VRAA.mainTexture = unfilteredRt;
			VRAA.SetInt("_U", resolution);
			VRAA.SetInt("_V", resolution);

			Graphics.Blit (unfilteredRt, rt);

			screenShot.ReadPixels(new Rect(0, 0, resolution, resolution), 0, 0);

			return screenShot;
		}





		public void SaveBitmap()
		{
			fileName = "Assets/NordLakeAssets/Resources/" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name +"/NordLake_" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name + "_FlowMap.png";
			Texture2D screenShot = GetVideoScreenshot();
			byte[] bytes = screenShot.EncodeToPNG();
			System.IO.File.WriteAllBytes(fileName, bytes);
			fMap = (Texture2D)AssetDatabase.LoadAssetAtPath(fileName, typeof(Texture2D));
			gMesh.sharedMaterial.SetTexture ("_FlowMap", fMap);
		}

	}
}
#endif