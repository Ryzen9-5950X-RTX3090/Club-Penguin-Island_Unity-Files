using UnityEngine;

namespace ClubPenguin
{
	public class CreateLightMap : MonoBehaviour
	{
		public Shader blurShader;
		public Shader lightmapCreationShader;
		public MeshRenderer target;
		public int numberBlurPasses;
		public int textureSize;
	}
}
