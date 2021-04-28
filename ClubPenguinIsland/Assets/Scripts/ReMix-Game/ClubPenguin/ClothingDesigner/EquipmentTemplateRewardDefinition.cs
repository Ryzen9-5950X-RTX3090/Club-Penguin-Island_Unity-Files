using System;
using ClubPenguin.Core;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner
{
	[Serializable]
	public class EquipmentTemplateRewardDefinition : AbstractStaticGameDataRewardDefinition<TemplateDefinition>
	{
		public TemplateDefinition Definition;
	}
}
