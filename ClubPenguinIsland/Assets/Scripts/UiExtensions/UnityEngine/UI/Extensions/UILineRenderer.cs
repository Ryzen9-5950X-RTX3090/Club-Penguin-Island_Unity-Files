using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class UILineRenderer : UIPrimitiveBase
	{
		public enum JoinType
		{
			Bevel = 0,
			Miter = 1,
		}

		public enum BezierType
		{
			None = 0,
			Quick = 1,
			Basic = 2,
			Improved = 3,
		}

		[SerializeField]
		private Rect m_UVRect;
		[SerializeField]
		private Vector2[] m_points;
		public float LineThickness;
		public bool UseMargins;
		public Vector2 Margin;
		public bool relativeSize;
		public bool LineList;
		public bool LineCaps;
		public JoinType LineJoins;
		public BezierType BezierMode;
		public int BezierSegmentsPerCurve;
	}
}
