using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.UI
{
	public class SnowballPowerMeter : MonoBehaviour
	{
		public Image PowerMeterImage;
		public CanvasGroup PowerMeterCanvasGroup;
		public RectTransform LastThrowIcon;
		public float FadeTime;
		public float ShowDelay;
		public float MaxMeterFill;
		public float MaxLastThrowIconAngle;
		public ColorUtils.ColorAtPercent[] MeterColors;
		public bool TransitionBetweenColors;
	}
}
