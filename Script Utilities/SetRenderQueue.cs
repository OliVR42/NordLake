﻿
using UnityEngine;

[AddComponentMenu("Rendering/SetRenderQueue")]

public class SetRenderQueue : MonoBehaviour {

	[SerializeField]
	protected int[] m_queues = new int[]{2000};

	protected void Awake() {
		Material[] materials = gameObject.GetComponent<MeshRenderer>().materials;
		for (int i = 0; i < materials.Length && i < m_queues.Length; ++i) {
			materials[i].renderQueue = m_queues[i];
		}
	}
}