using ClubPenguin.Core;
using Disney.Kelowna.Common;

namespace ClubPenguin.DecorationInventory
{
	public class StructureDefinition : IglooAssetDefinition<int>
	{
		public int Id;
		public int Cost;
		public int SizeUnits;
		public string Description;
		public TagDefinitionKey[] Tags;
		public StructureRenderDataContentKey RenderData;
		public PrefabContentKey Prefab;
		public CollisionRuleSetDefinitionKey RuleSet;
	}
}
