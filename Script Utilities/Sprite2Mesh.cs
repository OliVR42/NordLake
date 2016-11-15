using UnityEngine;
using System.Collections;
using UnityEditor;
using System;

//[ExecuteInEditMode]
public class Sprite2Mesh : MonoBehaviour {

	//public PolygonCollider2D collider;
	public Sprite sprite;

	private Vector2[] data;
//	private Vector2[] uvData;
	private Vector3[] meshData;

	private int[] trianglesData;
	public string fileName;
	public Texture2D fMap;
	private Mesh mesh;
	public int resolution;

	void Start () {
		fileName = "Assets/NordLakeAssets/Resources/" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name +"/NordLake_" + UnityEngine.SceneManagement.SceneManager.GetActiveScene().name + ".png";
		fMap = (Texture2D)AssetDatabase.LoadAssetAtPath(fileName, typeof(Texture2D));
		var textureImporter = AssetImporter.GetAtPath(fileName) as TextureImporter;
	//	textureImporter.textureType = TextureImporterType.Sprite;
	//	Texture2D spriteTex = (Texture2D)AssetDatabase.LoadAssetAtPath(fileName, typeof(Texture2D));
		sprite = Sprite.Create (fMap, new Rect (0, 0, resolution, resolution), new Vector2 (0.5f, 0.5f), 100f, 0, SpriteMeshType.Tight, new Vector4(500, 500, 500, 500));
	//	sprite =  Sprite Create(Texture2D texture, Rect rect, Vector2 pivot, float pixelsPerUnit = 100.0f, uint extrude = 0, SpriteMeshType meshType = SpriteMeshType.Tight, Vector4 border = Vector4.zero);
		//TextureImporter.GetAtPath(fileName);

		mesh = new Mesh(); 
		GetComponent<MeshFilter>().mesh = mesh;

		data = sprite.vertices;
//		uvData = sprite.uv;
		meshData = new Vector3[data.Length];
		trianglesData = new int[sprite.triangles.Length];
		mesh.vertices = new Vector3[data.Length];
		mesh.uv = new Vector2[sprite.uv.Length];
		mesh.triangles = new int[sprite.triangles.Length];
//		trianglesData = sprite.triangles;




		for (int i = 0; i < data.Length; i++){
			meshData[i] = new Vector3 (data[i].x, 0 , data[i].y);
			Debug.Log (sprite.vertices.Length + " " + meshData.Length + i);
		}

		for (int i = 0; i < trianglesData.Length; i++){
			int v = 0;
			int tempTriangle = sprite.triangles[i] + v;
			trianglesData[i] = tempTriangle;
			Debug.Log (sprite.triangles.Length + " " + trianglesData.Length + i);
		}




		mesh.vertices = meshData;
		mesh.uv = sprite.uv;
		mesh.triangles = trianglesData;
		mesh.RecalculateBounds ();
		mesh.RecalculateNormals ();
		calculateMeshTangents(mesh);
		textureImporter.textureType = TextureImporterType.Image;
		DestroyImmediate (sprite);
		UnityEditor.AssetDatabase.Refresh ();
	}


	// Update is called once per frame
//	void Update () {
//	
//	}


	public static void calculateMeshTangents(Mesh mesh)
	{
		//speed up math by copying the mesh arrays
		int[] triangles = mesh.triangles;
		Vector3[] vertices = mesh.vertices;
		Vector2[] uv = mesh.uv;
		Vector3[] normals = mesh.normals;

		//variable definitions
		int triangleCount = triangles.Length;
		int vertexCount = vertices.Length;

		Vector3[] tan1 = new Vector3[vertexCount];
		Vector3[] tan2 = new Vector3[vertexCount];

		Vector4[] tangents = new Vector4[vertexCount];

		for (long a = 0; a < triangleCount; a += 3)
		{
			long i1 = triangles[a + 0];
			long i2 = triangles[a + 1];
			long i3 = triangles[a + 2];

			Vector3 v1 = vertices[i1];
			Vector3 v2 = vertices[i2];
			Vector3 v3 = vertices[i3];

			Vector2 w1 = uv[i1];
			Vector2 w2 = uv[i2];
			Vector2 w3 = uv[i3];

			float x1 = v2.x - v1.x;
			float x2 = v3.x - v1.x;
			float y1 = v2.y - v1.y;
			float y2 = v3.y - v1.y;
			float z1 = v2.z - v1.z;
			float z2 = v3.z - v1.z;

			float s1 = w2.x - w1.x;
			float s2 = w3.x - w1.x;
			float t1 = w2.y - w1.y;
			float t2 = w3.y - w1.y;

			float r = 1.0f / (s1 * t2 - s2 * t1);

			Vector3 sdir = new Vector3((t2 * x1 - t1 * x2) * r, (t2 * y1 - t1 * y2) * r, (t2 * z1 - t1 * z2) * r);
			Vector3 tdir = new Vector3((s1 * x2 - s2 * x1) * r, (s1 * y2 - s2 * y1) * r, (s1 * z2 - s2 * z1) * r);

			tan1[i1] += sdir;
			tan1[i2] += sdir;
			tan1[i3] += sdir;

			tan2[i1] += tdir;
			tan2[i2] += tdir;
			tan2[i3] += tdir;
		}


		for (long a = 0; a < vertexCount; ++a)
		{
			Vector3 n = normals[a];
			Vector3 t = tan1[a];

			//Vector3 tmp = (t - n * Vector3.Dot(n, t)).normalized;
			//tangents[a] = new Vector4(tmp.x, tmp.y, tmp.z);
			Vector3.OrthoNormalize(ref n, ref t);
			tangents[a].x = t.x;
			tangents[a].y = t.y;
			tangents[a].z = t.z;

			tangents[a].w = (Vector3.Dot(Vector3.Cross(n, t), tan2[a]) < 0.0f) ? -1.0f : 1.0f;
		}

		mesh.tangents = tangents;
	}



}
