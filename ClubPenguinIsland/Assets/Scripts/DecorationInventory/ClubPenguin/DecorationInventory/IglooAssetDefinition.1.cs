using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using UnityEngine;

namespace ClubPenguin.DecorationInventory
{
	public class IglooAssetDefinition<IdType> : StaticGameDataDefinition
	{
		public string Name;
		public Texture2DContentKey Icon;
		[SerializeField]
		private bool isMemberOnly;
	}
}
