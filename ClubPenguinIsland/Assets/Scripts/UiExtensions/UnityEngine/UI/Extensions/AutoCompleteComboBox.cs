using UnityEngine;
using System.Collections.Generic;

namespace UnityEngine.UI.Extensions
{
	public class AutoCompleteComboBox : MonoBehaviour
	{
		public Color disabledTextColor;
		public List<string> AvailableOptions;
		[SerializeField]
		private float _scrollBarWidth;
		[SerializeField]
		private int _itemsToDisplay;
	}
}
