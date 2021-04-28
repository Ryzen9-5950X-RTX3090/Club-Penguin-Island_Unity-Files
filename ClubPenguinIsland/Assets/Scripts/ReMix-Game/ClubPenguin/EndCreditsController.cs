using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class EndCreditsController : MonoBehaviour
	{
		public string[] StoryTokens;
		public SpriteSelector StorySpriteSelector;
		public Text StoryText;
		public GameObject StoryContent;
		public GameObject CreditContent;
		public GameObject PenguinImage;
		public ContentScroller ContentScroller;
		public Animator FadeToBlackAnimator;
		public string FadeToBlackStateName;
		public float FadeToBlackNormalizedPosition;
	}
}
