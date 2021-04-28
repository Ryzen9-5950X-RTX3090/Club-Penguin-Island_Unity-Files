using UnityEngine.UI;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class Gradient : BaseMeshEffect
	{
		public override void ModifyMesh(VertexHelper vh)
		{
		}

		public GradientMode gradientMode;
		public GradientDir gradientDir;
		public bool overwriteAllColor;
		public Color vertex1;
		public Color vertex2;
	}
}
