using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class QuestNavigation : MonoBehaviour
	{
		public RectTransform TransformRotation;
		public RectTransform TransformDerotation;
		public RectTransform TransformPosition;
		public GameObject OnScreenGO;
		public GameObject OffScreenGO;
		public Image NavArrow;
		public Image NavCircle;
		public float PADDING_LEFT;
		public float PADDING_RIGHT;
		public float PADDING_TOP;
		public float PADDING_BOTTOM;
		public float MOVEMENT_SPEED;
		public float ARROW_SCALE_DIST;
		public float MIN_ARROW_SCALE;
		public float DIST_TEXT_FADE_START_DIST;
		public float DIST_TEXT_FADE_END_DIST;
		public Vector3 OnscreenIndicatorOffset;
	}
}
