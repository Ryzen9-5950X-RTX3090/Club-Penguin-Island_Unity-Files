using UnityEngine;
using System;

namespace ClubPenguin
{
	public class WaterProperties : MonoBehaviour
	{
		[Serializable]
		public struct Properties
		{
			public float Drag;
			public float MaxSpeed;
			public float RippleRate;
			public float RippleAmplitude;
			public float SurfaceOffset;
		}

		public Properties properties;
	}
}
