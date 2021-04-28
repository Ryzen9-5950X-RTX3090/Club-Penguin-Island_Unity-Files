using UnityEngine;

namespace ClubPenguin.SpecialEvents
{
	public class ScheduledFog : MonoBehaviour
	{
		public ScheduledFogData StartFogData;
		public ScheduledFogData TargetFogData;
		public AnimationCurve AnimCurve;
		public float TotalTime;
		public int UpdateOnFrame;
		public Material MaterialSkyBox;
		public Color StartSkyTint;
		public Color TargetSkyTint;
	}
}
