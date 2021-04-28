using UnityEngine;
using ClubPenguin;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class TrayInputButton : MonoBehaviour
	{
		public enum ButtonState
		{
			None = -1,
			Disabled = 0,
			Default = 1,
			Pulsing = 2,
			Highlighted = 3,
		}

		public SpriteSelector BackgroundSprite;
		public SpriteSelector IconSprite;
		public TintSelector IconTint;
		public Animator BackgroundAnimator;
		public Image Icon;
		public GameObject Behaviour;
		public TrayInputButtonAnimationEvent AnimationEvent;
	}
}
