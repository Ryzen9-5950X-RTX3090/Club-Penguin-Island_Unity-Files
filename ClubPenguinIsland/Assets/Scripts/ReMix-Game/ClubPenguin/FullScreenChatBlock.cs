using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class FullScreenChatBlock : MonoBehaviour
	{
		public Text MessageText;
		public Text NameText;
		public RawImage PenguinIconImage;
		public Image MembershipSprite;
		public GameObject ActiveTypingPanel;
		public GameObject BlockedTextPanel;
		public GameObject Preloader;
		public Text PlayerCardText;
		public string AccessibilityPlayerCardSpeechToken;
		public LayoutGroup PaddingLayoutGroup;
		public Material FontMaterialDefault;
		public Material FontMaterialWaiting;
		[SerializeField]
		private int maxEmoteString;
		[SerializeField]
		private int FontSizeDefault;
		[SerializeField]
		private int FontSizeSingleEmote;
		[SerializeField]
		private RectOffset PaddingDefault;
		[SerializeField]
		private RectOffset PaddingSingleEmote;
	}
}
