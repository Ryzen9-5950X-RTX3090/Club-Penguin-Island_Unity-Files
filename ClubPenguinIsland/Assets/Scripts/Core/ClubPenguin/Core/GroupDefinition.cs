using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Core
{
	[Serializable]
	public class GroupDefinition : StaticGameDataDefinition
	{
		public string Id;
		public string DisplayName;
		public int SortOrder;
		public StaticGameDataDefinitionKey[] Items;
		public GroupDefinitionKey Parent;
	}
}
