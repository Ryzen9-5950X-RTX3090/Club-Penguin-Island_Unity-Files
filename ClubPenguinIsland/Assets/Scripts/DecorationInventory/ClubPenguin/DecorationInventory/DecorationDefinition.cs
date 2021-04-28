using ClubPenguin.Core;
using Disney.Kelowna.Common;

namespace ClubPenguin.DecorationInventory
{
	public class DecorationDefinition : IglooAssetDefinition<int>
	{
		public int Id;
		public int Cost;
		public string Description;
		public TagDefinitionKey[] Tags;
		public PrefabContentKey Prefab;
		public CollisionRuleSetDefinitionKey RuleSet;
		public DecorationCategoryDefinitionDefinitionKey CategoryKey;
		public DecorationRenderDataContentKey RenderData;
		public float MaxScale;
		public float MinScale;
		public int MaxRotation;
		public int MinRotation;
		public int GroupSize;
	}
}
