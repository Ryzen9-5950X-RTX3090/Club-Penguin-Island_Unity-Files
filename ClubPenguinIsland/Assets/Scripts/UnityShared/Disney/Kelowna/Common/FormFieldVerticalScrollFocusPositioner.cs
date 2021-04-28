using UnityEngine;
using UnityEngine.UI;

namespace Disney.Kelowna.Common
{
	public class FormFieldVerticalScrollFocusPositioner : MonoBehaviour
	{
		public float FocusPosition;
		public LayoutElement Spacer;
		public float PreferredSpacerHeight;
		public bool PositionOnSelect;
		public bool PositionOnLayoutUpdate;
		public FormFieldFocusItem[] FocusItems;
	}
}
