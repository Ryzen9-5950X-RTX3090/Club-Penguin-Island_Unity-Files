namespace ClubPenguin.Input
{
	public class SingleControlInputInfo : InputInfo
	{
		public enum Actions
		{
			Jump = 0,
			Action1 = 1,
			Action2 = 2,
			Action3 = 3,
			Cancel = 4,
			Profile = 5,
		}

		public Actions ControlAction;
		public string PrimaryKey;
	}
}
