using System;
using ClubPenguin.Core;

namespace ClubPenguin.Cinematography
{
	[Serializable]
	public struct ZoomClampedSettings
	{
		public AspectRatioType Type;
		public float MinFOV;
		public float MaxFOV;
	}
}
