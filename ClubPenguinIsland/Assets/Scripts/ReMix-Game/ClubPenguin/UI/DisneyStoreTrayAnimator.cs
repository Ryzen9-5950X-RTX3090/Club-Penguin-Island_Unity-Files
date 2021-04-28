using UnityEngine;

namespace ClubPenguin.UI
{
	public class DisneyStoreTrayAnimator : MonoBehaviour
	{
		public Animator TrayAnimator;
		public Transform ToyboxDestination;
		public Transform MyPenguinDestination;
		[SerializeField]
		private float TWEEN_TIME;
		[SerializeField]
		private float TWEEN_CURVE_DAMPENER;
		[SerializeField]
		private float TWEEN_SCALE;
	}
}
