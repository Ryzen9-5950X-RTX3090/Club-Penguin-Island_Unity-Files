namespace ClubPenguin.SledRacer
{
	public class RaceResults
	{
		public enum RaceResultsCategory
		{
			Incomplete = 0,
			Bronze = 1,
			Silver = 2,
			Gold = 3,
			Legendary = 4,
		}

		public string trackId;
		public long StartTime;
		public long CompletionTime;
		public RaceResultsCategory raceResultsCategory;
	}
}
