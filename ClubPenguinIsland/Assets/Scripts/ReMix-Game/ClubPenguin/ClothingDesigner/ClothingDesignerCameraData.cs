using System;
using UnityEngine;

namespace ClubPenguin.ClothingDesigner
{
	[Serializable]
	public class ClothingDesignerCameraData : ScriptableObject
	{
		public ClothingDesignerCameraState State;
		public Vector3 Position;
		public Vector3 Rotation;
	}
}
