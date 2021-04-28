using System;
using UnityEngine;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class BodyMaterialProperties : TexturedMaterialProperties
	{
		public Texture2D DiffuseTexture;
		public Texture2D BodyColorsMaskTexture;
		public Texture2D DetailMatCapMaskEmissiveTexture;
	}
}
