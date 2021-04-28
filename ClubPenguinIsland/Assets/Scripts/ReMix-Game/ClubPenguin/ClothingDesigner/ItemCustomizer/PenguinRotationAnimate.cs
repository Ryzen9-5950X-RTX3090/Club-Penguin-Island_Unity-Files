using UnityEngine;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class PenguinRotationAnimate : MonoBehaviour
	{
		public SimpleSpringInterper rotateSpring;
		public AnimationCurve forceFalloffCurve;
		public Transform rotationHandle;
		public float forceDecayFactor;
		public float releaseStrengthFactor;
	}
}
