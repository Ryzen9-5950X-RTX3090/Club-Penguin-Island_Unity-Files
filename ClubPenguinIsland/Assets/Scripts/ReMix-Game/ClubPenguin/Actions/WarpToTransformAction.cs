using UnityEngine;

namespace ClubPenguin.Actions
{
	public class WarpToTransformAction : Action
	{
		public Transform TargetTransform;
		public Vector3 TargetOffset;
		public float Duration;
		public float Smoothness;
	}
}
