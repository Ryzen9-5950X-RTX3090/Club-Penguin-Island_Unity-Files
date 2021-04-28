using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Commerce
{
	[Serializable]
	public class ProductDefinition : StaticGameDataDefinition
	{
		public string key;
		public string gp_sku;
		public string apple_sku;
		public string csg_id;
		public string duration;
		public string trial;
		public bool is_recurring;
	}
}
