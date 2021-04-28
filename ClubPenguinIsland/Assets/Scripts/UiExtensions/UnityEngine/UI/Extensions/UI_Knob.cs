using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class UI_Knob : MonoBehaviour
	{
		public enum Direction
		{
			CW = 0,
			CCW = 1,
		}

		public Direction direction;
		public float knobValue;
		public float maxValue;
		public int loops;
		public bool clampOutput01;
		public bool snapToPosition;
		public int snapStepsPerLoop;
		public KnobFloatValueEvent OnValueChanged;
	}
}
