using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.TutorialUI
{
	internal class TutorialOverlay : MonoBehaviour
	{
		public Sprite CircleSprite;
		public Sprite RectangleSprite;
		public Sprite SquareSprite;
		public GameObject HighlightOutlinePrefab;
		public RectTransform BackgroundShape;
		public RectTransform LeftBG;
		public RectTransform RightBG;
		public RectTransform TopBG;
		public RectTransform BottomBG;
		public RectTransform CenterBGGroup;
		public RectTransform PopupPanel;
		public RectTransform TextBox;
		public RectTransform PopupArrow;
		public Text PopupText;
		public RectTransform HighlightOutlineContainer;
	}
}
