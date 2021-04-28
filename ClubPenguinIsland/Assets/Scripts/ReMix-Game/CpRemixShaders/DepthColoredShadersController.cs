using UnityEngine;

namespace CpRemixShaders
{
	public class DepthColoredShadersController : MonoBehaviour
	{
		public float SurfaceWorldPositionY;
		public float DeepestWorldPositionY;
		public Color DepthColor;
		public Texture2D ReflectionTexture;
		public Color ReflectionColor;
		public float ReflectionTiling;
		public float ReflectionBrightness;
		public float ReflectionXVelocity;
		public float ReflectionZVelocity;
		public float DynObjReflcTiling;
		public float DynObjReflcBrightness;
	}
}
