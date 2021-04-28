using UnityEngine;

namespace ClubPenguin
{
	public class CreateDepthMap : MonoBehaviour
	{
		public Shader depthOnlyShader;
		public Light directionalLight;
		public BoxCollider worldBoundingBox;
		public CreateLightMap[] lightMapTargets;
		public int textureSize;
		public float maxShadowAngle;
		public int numberPasses;
	}
}
