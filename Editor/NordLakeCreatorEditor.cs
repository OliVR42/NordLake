using UnityEngine;
using System.Collections;
using UnityEditor;
using System.Diagnostics;
using System.IO;
using NordLake;

#if UNITY_5_4_OR_NEWER
using UnityEditor.SceneManagement;
using UnityEngine.SceneManagement;
#endif

namespace NordLake {
	
[CustomEditor(typeof(NordLakeCreator))]

	public class NordLakeCreatorEditor : Editor {
		private Texture banner;


		void OnEnable(){
			banner = Resources.Load("NLHeader") as Texture;
		}


		public override void OnInspectorGUI () {
//add banner
			NordLakeCreator v2m = (NordLakeCreator)target;

			GUILayout.Box (banner, GUILayout.ExpandWidth(true));
//Resolution Presets
			GUILayout.BeginVertical ("box");
			GUILayout.BeginVertical ("box");
			v2m.resolution = EditorGUILayout.IntField (new GUIContent("Map Resolution", "Resolution of depth map used by Lake"), v2m.resolution);
			GUILayout.BeginHorizontal ("box");
			if (GUILayout.Button("128")){
				v2m.resolution = 128;
			}
			if (GUILayout.Button("256")){
				v2m.resolution = 256;
			}
			if (GUILayout.Button("512")){
				v2m.resolution = 512;
			}
			if (GUILayout.Button("1024")){
				v2m.resolution = 1024;
			}
			if (GUILayout.Button("2048")){
				v2m.resolution = 2048;
			}
			if (GUILayout.Button("4096")){
				v2m.resolution = 4096;
			}
			GUILayout.EndHorizontal();
			GUILayout.EndVertical();
			GUILayout.EndVertical();
////

//// Terrain Selection
			GUILayout.BeginVertical ("box");
			v2m.terrainReference = (GameObject) EditorGUILayout.ObjectField("Terrain", v2m.terrainReference, typeof (GameObject), true);
			v2m.useTerrainDepth = EditorGUILayout.Toggle (new GUIContent("Use Terrain depth", ""), v2m.useTerrainDepth);
			if (!v2m.useTerrainDepth)
				v2m.waterHeightTerrain = EditorGUILayout.FloatField (new GUIContent("Max water depth", "Maximum water depth"), v2m.waterHeightTerrain );
				v2m.terrainHeight = EditorGUILayout.FloatField (new GUIContent("Terrain height", "Maximum water depth"), v2m.terrainHeight );
			GUILayout.EndVertical();

			GUILayout.BeginVertical ("box");
			if (v2m.terrainReference != null) {
				if (GUILayout.Button ("Align Water to Terrain"))
					v2m.alignWithTerrain = true;
			}
			GUILayout.EndVertical();


			GUILayout.BeginVertical ("box");
			v2m.layer = EditorGUILayout.LayerField("LayerMask", v2m.layer);
			GUILayout.EndVertical();



			for (int i = 0; i < v2m.presets.Length; i++) {
				GUILayout.BeginHorizontal ("box");

				if (GUILayout.Button ("Use Preset")) {
					v2m.lakeMaterial = v2m.presets[i];
				}

				v2m.presets[i] = (Material)EditorGUILayout.ObjectField ("Preset " + i, v2m.presets[i], typeof(Material), true);
				GUILayout.EndHorizontal();
			}


///render Button
			GUILayout.BeginVertical ("box");


			if (GUILayout.Button ("Render NordLake and Create Material")){

				v2m.RNDUpdateOnly = false;
				v2m.RND = true;
//				v2m.depthTex = (Texture2D)AssetDatabase.LoadAssetAtPath(v2m.fileName, typeof(Texture2D));
//				v2m.lakeMat = (Material)AssetDatabase.LoadAssetAtPath(v2m.matName, typeof(Material));
//				v2m.lakeMat.SetTexture ("_DepthMap", v2m.depthTex);
			}

			if (GUILayout.Button ("Render NordLake and Update Material")){
				v2m.RNDUpdateOnly = true;
				v2m.RND = true;
				//v2m.RNDUpdateOnly = false;
			}

			if (GUILayout.Button ("AddFlowmap")){
				v2m.addFlowmapper = true;
			}

			GUILayout.EndVertical();






//refresh interface
			if (GUI.changed){
				EditorUtility.SetDirty(v2m);
				#if UNITY_5_4_OR_NEWER
				EditorSceneManager.MarkSceneDirty(SceneManager.GetActiveScene());
				#endif
			}

		}

	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
}
