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
	[CustomEditor(typeof(FlowmapPainter))]
	public class FlowMapPainterEditor : Editor {

		public override void OnInspectorGUI () {
			
			FlowmapPainter fmp = (FlowmapPainter)target;
			GUILayout.BeginVertical ("box");
			fmp.navCam = (GameObject) EditorGUILayout.ObjectField("Navigation Camera", fmp.navCam, typeof (GameObject), true);

			GUILayout.BeginVertical ("box");
			fmp.resolution = EditorGUILayout.IntField (new GUIContent("Flowmap Resolution", "Resolution of depth map used by Lake"), fmp.resolution);

			GUILayout.BeginHorizontal ("box");
			if (GUILayout.Button("128")){
				fmp.resolution = 128;
			}
			if (GUILayout.Button("256")){
				fmp.resolution = 256;
			}
			if (GUILayout.Button("512")){
				fmp.resolution = 512;
			}
			if (GUILayout.Button("1024")){
				fmp.resolution = 1024;
			}
			if (GUILayout.Button("2048")){
				fmp.resolution = 2048;
			}
			if (GUILayout.Button("4096")){
				fmp.resolution = 4096;
			}

			GUILayout.EndHorizontal();

			if (GUILayout.Button ("Paint Flow Map"))
				UnityEditor.EditorApplication.isPlaying = true;

			if (GUILayout.Button ("Reset FlowMap"))
				fmp.clearCanvas = true;

			if (GUILayout.Button ("Save FlowMap")) {
				fmp.saveVectorMap = true;

			}
			fmp.brushSize = EditorGUILayout.FloatField (new GUIContent ("Brush Size (in mt,)", "Resolution of depth map used by Lake"), fmp.brushSize);
			fmp.opacity = EditorGUILayout.FloatField (new GUIContent ("Brush Opacity", "Resolution of depth map used by Lake"), fmp.opacity);

			GUILayout.EndVertical();

			GUILayout.EndVertical();



//refresh interface

			if (GUI.changed){
				EditorUtility.SetDirty(fmp);
				#if UNITY_5_4_OR_NEWER
				if (!EditorApplication.isPlaying)

					EditorSceneManager.MarkSceneDirty(SceneManager.GetActiveScene());
					
				#endif
			}



		}

	// Use this for initialization
		void Start () {
	
		}
	
	// Update is called once per frame
		void Update () {
	
		}
	}
}
