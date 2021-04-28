using UnityEngine;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class RotationWidget : MonoBehaviour
	{
		[SerializeField]
		private RectTransform rotationTarget;
		[SerializeField]
		private RectTransform rotationCenter;
		[SerializeField]
		private float rotationSpeed;
		public GameObject disabledCover;
	}
}
