using UnityEngine;

namespace ClubPenguin.WorldEditor.Optimization
{
	public class SceneOptimizationSettings : MonoBehaviour
	{
		public int MinTextureSize;
		public int MaxTextureSize;
		public int MaxAtlasDimension;
		public Texture2D[] TextureAtlasPreviewButtons;
		public TextureData[] Textures;
		public Texture2D WorldObjectTextureAtlas;
		public Material WorldObjectAtlasMaterial;
	}
}
