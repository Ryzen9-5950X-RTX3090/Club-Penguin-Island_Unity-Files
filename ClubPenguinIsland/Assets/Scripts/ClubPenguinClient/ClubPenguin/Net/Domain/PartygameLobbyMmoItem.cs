using System;

namespace ClubPenguin.Net.Domain
{
	[Serializable]
	public class PartygameLobbyMmoItem : CPMMOItem
	{
		public string playerData;
		public long timeStartedInSeconds;
		public long timeToLive;
		public int gameTemplateId;
	}
}
