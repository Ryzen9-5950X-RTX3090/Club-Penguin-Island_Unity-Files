using System;
using UnityEngine;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class DecorationRenderData : ScriptableObject
	{
		public Vector3 ItemPosition;
		public Quaternion ItemRotation;
		public Quaternion CameraRotation;
		public float CameraFOV;
	}
}
