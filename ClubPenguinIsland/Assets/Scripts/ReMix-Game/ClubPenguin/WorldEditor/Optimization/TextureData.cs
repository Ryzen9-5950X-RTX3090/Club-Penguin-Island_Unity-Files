using System;
using UnityEngine;

namespace ClubPenguin.WorldEditor.Optimization
{
	[Serializable]
	public class TextureData
	{
		public string TextureName;
		public float Weight;
		public int SizeInAtlas;
		public Texture2D Texture;
		public float MinDistance;
		public float Ratio;
		public int ImportedSize;
		public Rect AtlasOffset;
	}
}
