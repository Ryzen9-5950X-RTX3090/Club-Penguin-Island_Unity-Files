using UnityEngine.UI;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class CurvedText : BaseMeshEffect
	{
		public override void ModifyMesh(VertexHelper vh)
		{
		}

		public AnimationCurve curveForText;
		public float curveMultiplier;
	}
}
