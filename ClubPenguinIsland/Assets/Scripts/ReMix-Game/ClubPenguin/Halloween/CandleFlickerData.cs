using System;
using UnityEngine;

namespace ClubPenguin.Halloween
{
	[Serializable]
	public class CandleFlickerData
	{
		public Material PumpkinMaterial;
		public Color BaseColor;
		public AnimationCurve flickerCurve;
		public float AnimTime;
		public float AnimStep;
	}
}
