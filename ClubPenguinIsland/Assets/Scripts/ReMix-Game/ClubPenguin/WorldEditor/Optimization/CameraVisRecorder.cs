using UnityEngine;

namespace ClubPenguin.WorldEditor.Optimization
{
	public class CameraVisRecorder : MonoBehaviour
	{
		public int MaxEntries;
		public float MinAngleVariance;
		public float MinDistanceVariance;
		public float CamFov;
		public float RecordDelaySec;
	}
}
