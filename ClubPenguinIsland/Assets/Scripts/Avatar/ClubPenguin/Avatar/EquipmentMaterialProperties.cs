using System;
using UnityEngine;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class EquipmentMaterialProperties : TexturedMaterialProperties
	{
		public Texture Decals123OpacityTexture;
		public Color EmissiveColorTint;
		public Color[] DecalColors;
	}
}
