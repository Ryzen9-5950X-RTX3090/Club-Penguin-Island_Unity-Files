using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class Accordion : MonoBehaviour
	{
		public enum Transition
		{
			Instant = 0,
			Tween = 1,
		}

		[SerializeField]
		private Transition m_Transition;
		[SerializeField]
		private float m_TransitionDuration;
	}
}
