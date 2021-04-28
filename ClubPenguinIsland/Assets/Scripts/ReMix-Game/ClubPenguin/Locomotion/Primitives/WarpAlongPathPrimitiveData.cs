using UnityEngine;

namespace ClubPenguin.Locomotion.Primitives
{
	public class WarpAlongPathPrimitiveData : ScriptableObject
	{
		public string AnimBool;
		public bool StopAtEndPoint;
		public float WarpSpeed;
		public float TurnSmoothing;
		public float StartAccel;
		public float Curvature;
		public int Steps;
	}
}
