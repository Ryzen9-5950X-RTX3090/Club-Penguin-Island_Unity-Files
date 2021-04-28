using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class DailySpinWheel : MonoBehaviour
	{
		public GameObject ItemContainer;
		public float SpinLoopSpeed;
		public float StartSpinTime;
		public float SpinLoopTime;
		public float EndSpinMuliplier;
		public float EndRotationVariation;
		public Animator TickerAnimator;
		public Image WheelImage;
		public Image[] SliceImages;
	}
}
