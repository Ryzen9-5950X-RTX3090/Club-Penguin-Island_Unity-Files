using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner
{
	[Serializable]
	public class EquipmentInstanceRewardDefinition : AbstractStaticGameDataRewardDefinition<TemplateDefinition>
	{
		public TemplateDefinition Definition;
	}
}
