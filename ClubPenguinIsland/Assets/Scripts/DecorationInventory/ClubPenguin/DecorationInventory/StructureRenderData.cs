using System;
using UnityEngine;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class StructureRenderData : ScriptableObject
	{
		public Vector3 ItemPosition;
		public Quaternion ItemRotation;
		public Quaternion CameraRotation;
		public float CameraFOV;
	}
}
