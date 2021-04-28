using UnityEngine;

namespace ClubPenguin.UI
{
	public class RotationWheel : MonoBehaviour
	{
		public float MaxDegrees;
		public float MinDegrees;
		[SerializeField]
		private RectTransform rotationTarget;
		[SerializeField]
		private RectTransform rotationCenter;
		[SerializeField]
		private float rotationSpeed;
		public GameObject disabledCover;
	}
}
