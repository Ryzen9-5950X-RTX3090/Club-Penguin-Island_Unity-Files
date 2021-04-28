using System;
using ClubPenguin.DecorationInventory;
using Disney.Kelowna.Common;

namespace ClubPenguin.Core
{
	[Serializable]
	public class MusicTrackDefinition : IglooAssetDefinition<int>
	{
		public int Id;
		public string InternalName;
		public PrefabContentKey Music;
		public MusicGenreDefinitionDefinitionKey MusicGenre;
	}
}
