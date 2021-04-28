using System;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class TemplateRenderData : ScriptableObject
	{
		public Vector3 ItemPosition;
		public Quaternion ItemRotation;
		public Quaternion CameraRotation;
		public float CameraFOV;
	}
}
