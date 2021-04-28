using UnityEngine;

namespace ClubPenguin.Cinematography
{
	internal class PointOfInterestGlancer : Glancer
	{
		public float MaxGlanceAngle;
		public float GlancePercent;
		public bool UseBlendCurve;
		public AnimationCurve BlendCurve;
		public float BlendDuration;
	}
}
