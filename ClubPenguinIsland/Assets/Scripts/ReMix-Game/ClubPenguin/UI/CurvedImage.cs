using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin.UI
{
	public class CurvedImage : BaseMeshEffect
	{
		public enum CurvedImageConstraint
		{
			None = 0,
			Bottom = 1,
			Top = 2,
		}

		public override void ModifyMesh(VertexHelper vh)
		{
		}

		public AnimationCurve imageCurve;
		public float curveMultiplier;
		public int NumVertices;
		public CurvedImageConstraint Constraint;
	}
}
