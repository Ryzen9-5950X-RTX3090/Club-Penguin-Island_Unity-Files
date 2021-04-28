namespace ClubPenguin.Core
{
	public class InputEvents
	{
		public enum Cycles
		{
			None = -1,
			Walk = 0,
			Run = 1,
		}

		public enum Actions
		{
			None = -1,
			Jump = 0,
			Interact = 1,
			Snowball = 2,
			Action1 = 3,
			Action2 = 4,
			Action3 = 5,
			Torpedo = 6,
			Cancel = 7,
		}

		public enum ChargeActions
		{
			None = -1,
			Snowball = 0,
		}

		public enum Switches
		{
			None = -1,
			Tube = 0,
		}

	}
}
