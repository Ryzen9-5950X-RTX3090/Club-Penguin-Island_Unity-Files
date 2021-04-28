using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin
{
	[Serializable]
	public class CatalogThemeScheduleDefinition : StaticGameDataDefinition
	{
		public int Id;
		public int Day;
		public int Month;
		public int Year;
		public int CatalogThemeId;
	}
}
