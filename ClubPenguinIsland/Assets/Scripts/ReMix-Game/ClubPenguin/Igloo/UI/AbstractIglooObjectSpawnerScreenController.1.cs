using Disney.Kelowna.Common;
using ClubPenguin.Net.Domain.Decoration;
using ClubPenguin.Core;

namespace ClubPenguin.Igloo.UI
{
	public class AbstractIglooObjectSpawnerScreenController<DecorationDefinitionType> : AbstractIglooScreenController<DecorationDefinitionType, int>
	{
		public PrefabContentKey DragContainerContentKey;
		public DecorationType decorationType;
		public DecorationLayoutData.DefinitionType decorationDefinitionType;
	}
}
