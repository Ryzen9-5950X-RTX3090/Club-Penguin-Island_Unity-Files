using System;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	[Serializable]
	public class DropDownListItem
	{
		public DropDownListItem(string caption, string inId, Sprite image, bool disabled, Action onSelect)
		{
		}

		[SerializeField]
		private string _caption;
		[SerializeField]
		private Sprite _image;
		[SerializeField]
		private bool _isDisabled;
		[SerializeField]
		private string _id;
	}
}
