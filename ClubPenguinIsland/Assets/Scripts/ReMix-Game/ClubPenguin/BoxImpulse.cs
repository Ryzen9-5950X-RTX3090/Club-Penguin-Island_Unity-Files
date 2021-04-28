using UnityEngine;

namespace ClubPenguin
{
	public class BoxImpulse : MonoBehaviour
	{
		public enum ImpulseType
		{
			SnapVelocity = 0,
			AddVelocity = 1,
		}

		public ImpulseType Behaviour;
		public Transform ZDirection;
		public float Magnitude;
		public bool EveryFrame;
		public bool IgnoreIfRunController;
	}
}
