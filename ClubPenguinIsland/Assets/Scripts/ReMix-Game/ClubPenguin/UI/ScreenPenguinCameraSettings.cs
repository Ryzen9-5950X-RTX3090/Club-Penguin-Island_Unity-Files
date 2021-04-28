using System;
using ClubPenguin.Core;

namespace ClubPenguin.UI
{
	[Serializable]
	public class ScreenPenguinCameraSettings : AbstractAspectRatioSpecificSettings
	{
		public float ZoomPercentage;
		public float ZoomHeightOffset;
		public float ZoomMinDist;
	}
}
