using UnityEngine.UI;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class TableLayoutGroup : LayoutGroup
	{
		public enum Corner
		{
			UpperLeft = 0,
			UpperRight = 1,
			LowerLeft = 2,
			LowerRight = 3,
		}

		public override void CalculateLayoutInputVertical()
		{
		}

		public override void SetLayoutHorizontal()
		{
		}

		public override void SetLayoutVertical()
		{
		}

		[SerializeField]
		protected Corner startCorner;
		[SerializeField]
		protected float[] columnWidths;
		[SerializeField]
		protected float minimumRowHeight;
		[SerializeField]
		protected bool flexibleRowHeight;
		[SerializeField]
		protected float columnSpacing;
		[SerializeField]
		protected float rowSpacing;
	}
}
