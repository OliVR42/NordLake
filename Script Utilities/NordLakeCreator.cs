#if UNITY_EDITOR
using UnityEngine;
using System.Collections;
using System.IO;
using UnityEditor;

namespace NordLake {
[ExecuteInEditMode]
public class NordLakeCreator : MonoBehaviour {
	public GameObject terrainReference;
	private RenderTexture unfilteredRt;
	private Texture2D screenShot;
	public Shader shader;
	public Shader normalShader;
	public GameObject renderCamObject;
	public Camera cam;
	public Terrain ter;
	public float waterHeightTerrain;
	public float terrainHeight;
	public bool RND = false;
	public bool RNDUpdateOnly = false;
	public string fileName;
	public string matName;
	public int resolution = 2048;
	public bool refresh;
	public float pixelError;
	public float offset;
	public Texture depthTex;
	public Material lakeMat;
	public MeshRenderer gObjectMeshRenderer;
	public bool alignWithTerrain;
	public Texture2D lastTexture;
	public LayerMask layer;
	public bool addFlowmapper = false;
	public FlowmapPainter fmp;
	public Material[] presets;
	public Material lakeMaterial;
	public bool useTerrainDepth = true;

	public void Awake(){
		
	}
	public void Update() {

		if (addFlowmapper) {
			if (gameObject.GetComponent<FlowmapPainter>() == null){
				fmp = gameObject.AddComponent <FlowmapPainter> () as FlowmapPainter;
				}
				addFlowmapper = false;
			}
			Shader.SetGlobalFloat ("_WLakeHeight",  gameObject.transform.position.y );
			Shader.SetGlobalFloat ("_WLakeDepth",   waterHeightTerrain);

			if (useTerrainDepth && terrainReference!=null){
				waterHeightTerrain = gameObject.transform.position.y - terrainReference.transform.position.y;
				Shader.SetGlobalFloat ("_WLakeHeight", waterHeightTerrain);
			}
			if (terrainReference != null) {
				ter = terrainReference.GetComponent<Terrain> ();
				terrainHeight = ter.terrainData.size.y;
			}

		


			fileName = "Assets/NordLakeAssets/Resources/" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name +"/" + gameObject.transform.name + "_" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name + ".png";
			matName = "Assets/NordLakeAssets/Resources/"  + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name +"/" + gameObject.transform.name + "_" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name + ".mat";



			if (alignWithTerrain && terrainReference!=null){
				gameObject.transform.localScale = new Vector3 (ter.terrainData.size.x/10, ter.terrainData.size.y/10, ter.terrainData.size.x/10);
				gameObject.transform.position = new Vector3 (terrainReference.transform.position.x + ter.terrainData.size.x/2, gameObject.transform.position.y, terrainReference.transform.position.z + ter.terrainData.size.z/2);
				alignWithTerrain = false;
			}

			if (RND) {
				if (useTerrainDepth && terrainReference != null) {	
					pixelError = ter.heightmapPixelError;
					ter.heightmapPixelError = 0;
				}
			System.IO.Directory.CreateDirectory("Assets/NordLakeAssets/Resources/" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name +"/");
			
			gameObject.GetComponent<MeshRenderer>().enabled = false;


				renderCamObject = new GameObject();
				cam = renderCamObject.AddComponent<Camera>();
				renderCamObject.transform.SetParent(gameObject.transform);
				renderCamObject.transform.localEulerAngles = new Vector3 (90, 0, 0);
				renderCamObject.transform.position = new Vector3 (gameObject.transform.position.x, gameObject.transform.position.y + offset, gameObject.transform.position.z) ;

				cam.orthographic = true;


				cam.clearFlags = CameraClearFlags.SolidColor; 
				cam.backgroundColor = new Color (1f, 1f, 1f, 0f);


				
				renderCamObject.transform.localEulerAngles = new Vector3 (90, 0, 180);
				cam.orthographicSize = gameObject.transform.lossyScale.x / 2f * 10f;
				cam.nearClipPlane = 0.1f;
				cam.farClipPlane = 500f;
				cam.SetReplacementShader(shader, null);

				SaveScreenshot ();



				DestroyImmediate (renderCamObject);
				RND = false;
				if (ter!=null) ter.heightmapPixelError = pixelError;
		
				if (!RNDUpdateOnly) {
					lakeMaterial = (Material)Instantiate (Resources.Load ("Templates/NordLakeTemplate"));

					UnityEditor.AssetDatabase.CreateAsset (lakeMaterial, matName);
				}

//				Material newMat = (Resources.Load(matName)) as Material;
//				newMat.SetTexture ("_DepthMap", depthTex);

			
//Refresh Assets
				SceneView.RepaintAll ();

				UnityEditor.AssetDatabase.Refresh ();
				lastTexture = (Texture2D)AssetDatabase.LoadAssetAtPath(fileName, typeof(Texture2D));
				refresh = true;
//			}

		}







				depthTex = (Texture2D)AssetDatabase.LoadAssetAtPath(fileName, typeof(Texture2D));
				lakeMat = (Material)AssetDatabase.LoadAssetAtPath(matName, typeof(Material));
				lakeMat.SetTexture ("_DepthMap", depthTex);
				//lakeMat.SetFloat ("_InternalsScale", ter.terrainData.size.x);
				gObjectMeshRenderer = gameObject.GetComponent<MeshRenderer>();
				gObjectMeshRenderer.enabled = true;
				if (!RNDUpdateOnly) 
					gObjectMeshRenderer.material = lakeMat;
				refresh = false;


	}




	public Texture2D GetVideoScreenshot()
	{
		screenShot = new Texture2D(resolution, resolution, TextureFormat.ARGB32, true);
		unfilteredRt = RenderTexture.GetTemporary(resolution, resolution, 0, RenderTextureFormat.Default, RenderTextureReadWrite.Linear);

		Camera VRCam = cam ;
		VRCam.targetTexture = unfilteredRt;
		VRCam.Render();

		RenderTexture.active = unfilteredRt;            


//		screenShot.ReadPixels(new Rect(0, 0, 2048, 2048), 0, 0);
		screenShot.ReadPixels(new Rect(0, 0, resolution, resolution), 0, 0);

		VRCam.targetTexture = null;
		RenderTexture.ReleaseTemporary(unfilteredRt);
		return screenShot;

	}





	public void SaveScreenshot()
	{


		Texture2D screenShot = GetVideoScreenshot();
		byte[] bytes = screenShot.EncodeToPNG();
		File.WriteAllBytes(fileName, bytes);


		}
			


}
}
#endif