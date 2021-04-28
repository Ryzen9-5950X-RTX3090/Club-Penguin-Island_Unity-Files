using UnityEngine;

namespace ClubPenguin.Locomotion
{
	public class SurfaceSwimProperties : MonoBehaviour
	{
		public enum VolumeType
		{
			SurfaceSwimming = 0,
			Diving = 1,
		}

		public VolumeType Type;
		public float VisibleSurfaceHeight;
		public float SinkOffset;
		public bool SpecifyValuesInLocalSpace;
		public Transform ObjectOrigin;
	}
}
