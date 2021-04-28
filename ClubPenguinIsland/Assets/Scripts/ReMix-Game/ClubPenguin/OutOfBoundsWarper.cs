using UnityEngine;

namespace ClubPenguin
{
	public class OutOfBoundsWarper : MonoBehaviour
	{
		public bool DebugDrawBounds;
		public Bounds Limits;
		public Collider OutOfBoundsCollider;
	}
}
