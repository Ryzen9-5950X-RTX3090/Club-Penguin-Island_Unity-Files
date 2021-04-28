using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin
{
	[Serializable]
	public class EquipmentCategoryDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string DisplayName;
		public string EquipAnimationTrigger;
	}
}
