namespace ClubPenguin
{
	public class PhysicalSizeRectScaler : PhysicalSizeScaler
	{
		public enum AnchorPosition
		{
			TOP_LEFT = 0,
			TOP_CENTER = 1,
			TOP_RIGHT = 2,
			MID_LEFT = 3,
			MID_CENTER = 4,
			MID_RIGHT = 5,
			LOW_LEFT = 6,
			LOW_CENTER = 7,
			LOW_RIGHT = 8,
		}

		public AnchorPosition AnchoredPosition;
		public float TargetHeightInches_Iphone5;
		public float TargetHeightInches_Ipad;
		public float TargetWidthInches_Iphone5;
		public float TargetWidthInches_Ipad;
	}
}
