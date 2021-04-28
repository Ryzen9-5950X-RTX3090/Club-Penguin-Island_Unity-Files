using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class UILineTextureRenderer : UIPrimitiveBase
	{
		[SerializeField]
		private Rect m_UVRect;
		[SerializeField]
		private Vector2[] m_points;
		public float LineThickness;
		public bool UseMargins;
		public Vector2 Margin;
		public bool relativeSize;
	}
}
