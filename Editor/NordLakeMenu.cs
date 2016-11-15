using UnityEngine;
using UnityEditor;
using NordLake;
using System.Collections;


namespace VRPanorama
{
	public class NordLakeMenu : MonoBehaviour {
//	private GameObject VRPano;
	[MenuItem("GameObject/3D Object/NordLake", false, 10)]
	static void CreateVRCameraObject(MenuCommand menuCommand) {
		

		GameObject Nlake = PrefabUtility.InstantiatePrefab(Resources.Load("NordLake")) as GameObject;
		Nlake.name = "NordLake";
			PrefabUtility.DisconnectPrefabInstance (Nlake);
		

			GameObjectUtility.SetParentAndAlign(Nlake, menuCommand.context as GameObject);
		

			Undo.RegisterCreatedObjectUndo(Nlake, "Create " + Nlake.name);
			Selection.activeObject = Nlake;
	}

	

	}
}
