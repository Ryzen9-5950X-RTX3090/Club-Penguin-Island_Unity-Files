using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class FadeTransition : Transition
	{
		[SerializeField]
		public float fadeOutSeconds;
		[SerializeField]
		public float fadeInSeconds;
		[SerializeField]
		public float waitSeconds;
		[SerializeField]
		public Color fadeColor;
		[SerializeField]
		public Texture2D texture;
	}
}
