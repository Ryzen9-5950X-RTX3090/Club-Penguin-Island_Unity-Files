using System;
using ClubPenguin.DecorationInventory;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	[Serializable]
	public class LotDefinition : IglooAssetDefinition<string>
	{
		public string LotName;
		public ZoneDefinitionKey ZoneDefintion;
		public Texture2DContentKey PreviewImageLarge;
		public int MaxItems;
	}
}
