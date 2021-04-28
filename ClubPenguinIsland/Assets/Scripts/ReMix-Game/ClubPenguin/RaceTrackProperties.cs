using UnityEngine;
using System;

namespace ClubPenguin
{
	public class RaceTrackProperties : MonoBehaviour
	{
		[Serializable]
		public struct Properties
		{
			public float Drag;
			public float MaxSpeed;
		}

		public Properties properties;
	}
}
