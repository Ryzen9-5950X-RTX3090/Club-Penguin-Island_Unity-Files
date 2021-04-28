using UnityEngine;
using System;
using ClubPenguin.Core;

namespace ClubPenguin.Cinematography
{
	public class ZoomPlayerPostEffect : MonoBehaviour
	{
		[Serializable]
		public struct SwitchInfo
		{
			public Switch ActivationSwitch;
			public float ZoomPercentOnMove;
			public float ZoomPercentOnIdle;
			public float HeightOffset;
			public float ZoomOutDelay;
			public float MinDist;
		}

		public AnimationCurve Curve;
		public float Duration;
		public SwitchInfo[] Switches;
	}
}
