using UnityEngine.UI;
using System;
using UnityEngine.Events;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class BoxSlider : Selectable
	{
		[Serializable]
		public class BoxSliderEvent : UnityEvent<float, float>
		{
		}

		[SerializeField]
		private RectTransform m_HandleRect;
		[SerializeField]
		private float m_MinValue;
		[SerializeField]
		private float m_MaxValue;
		[SerializeField]
		private bool m_WholeNumbers;
		[SerializeField]
		private float m_ValueX;
		[SerializeField]
		private float m_ValueY;
		[SerializeField]
		private BoxSliderEvent m_OnValueChanged;
	}
}
