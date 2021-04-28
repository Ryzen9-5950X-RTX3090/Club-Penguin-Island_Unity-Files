using Disney.Kelowna.Common.SEDFSM;
using UnityEngine;

namespace ClubPenguin.UI
{
	public class ChatBarController : PassiveStateHandler
	{
		public GameObject CloseButtonContainer;
		public OnOffSpriteSelector InstantButton;
		public OnOffSpriteSelector EmoteButton;
		public Animator ChatBarAnimator;
		public Transform QuickEmoteLocation;
		public Transform QuickChatLocation;
		public Transform EmoteLocation;
		public int CharacterLimit;
		public string InputPlaceholderToken;
		public string InstantPlaceholderToken;
	}
}
