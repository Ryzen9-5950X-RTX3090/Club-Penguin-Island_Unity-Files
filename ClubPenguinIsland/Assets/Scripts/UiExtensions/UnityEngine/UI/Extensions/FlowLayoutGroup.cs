using UnityEngine.UI;

namespace UnityEngine.UI.Extensions
{
	public class FlowLayoutGroup : LayoutGroup
	{
		public override void CalculateLayoutInputVertical()
		{
		}

		public override void SetLayoutHorizontal()
		{
		}

		public override void SetLayoutVertical()
		{
		}

		public float SpacingX;
		public float SpacingY;
		public bool ExpandHorizontalSpacing;
		public bool ChildForceExpandWidth;
		public bool ChildForceExpandHeight;
	}
}
