using System;
using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.DecorationInventory
{
	[Serializable]
	public class LightingDefinition : IglooAssetDefinition<int>
	{
		public int Id;
		public string InternalName;
		public Color AmbientSkyColor;
		public Color AmbientEquatorColor;
		public Color AmbientGroundColor;
		public MaterialContentKey SkyboxMaterialKey;
	}
}
