using System;
using UnityEngine;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class DecalMaterialProperties : BaseMaterialProperties
	{
		public DecalMaterialProperties(int channel)
		{
		}

		public Texture2D Texture;
		public float Scale;
		public float UOffset;
		public float VOffset;
		public bool Repeat;
		public float RotationRads;
	}
}
