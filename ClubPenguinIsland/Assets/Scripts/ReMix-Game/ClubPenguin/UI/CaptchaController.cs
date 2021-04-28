using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class CaptchaController : MonoBehaviour
	{
		public GameObject LoadingSpinner;
		public GameObject ImagesGridContainer;
		public Text ChallengeText;
		public GameObject ChallengeFail;
		public Image CaptchaImage;
		public RectTransform CaptchaImageRectTransform;
	}
}
