using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class WorldSpeechBubble : MonoBehaviour
	{
		public Text MessageText;
		public GameObject ActiveTypingPanel;
		public GameObject BlockedTextPanel;
		public RectTransform BubbleRect;
		public LayoutGroup PaddingLayoutGroup;
		public float DisplayTime;
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
