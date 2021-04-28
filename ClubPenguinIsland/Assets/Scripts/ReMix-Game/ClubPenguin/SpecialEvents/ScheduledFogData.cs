using System;
using UnityEngine;

namespace ClubPenguin.SpecialEvents
{
	[Serializable]
	public class ScheduledFogData
	{
		public bool FogEnabled;
		public Color Color;
		public float Density;
		public FogMode FogMode;
		public float StartDistance;
		public float EndDistance;
	}
}
