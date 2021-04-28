using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class ActiveSwatchWidget : MonoBehaviour
	{
		public RawImage fabricIconUI;
		public RawImage decalIconUI;
		public GameObject fabricBG;
		public GameObject decalBG;
		public GameObject disabledCover;
		public Transform[] iconScaleHandles;
		public CanvasGroup[] iconLabelGroups;
		public float rotationStrengthDegrees;
		public SimpleSpringInterper scaleInterper;
		public float minScale;
		public Transform moveHandle;
		public SimpleSpringInterper moveInterper;
		public Vector2 moveDirection;
		public float moveStrength;
		public Transform[] bounceHandles;
		public Graphic[] bounceGraphicsFabric;
		public Graphic[] bounceGraphicsDecal;
		public float bounceDuration;
		public float bounceStrength;
		public AnimationCurve bounceCurve;
		public Color bounceColor;
		public bool doAnimate;
	}
}
