using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class FlowGridLayoutGroup : LayoutGroup
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

		public float PreferredCellWidth;
		public float PreferredCellHeight;
		public float SpacingX;
		public float SpacingY;
		public bool ExpandHorizontalSpacing;
		public bool ChildForceExpandWidth;
		public bool ChildForceExpandHeight;
	}
}
