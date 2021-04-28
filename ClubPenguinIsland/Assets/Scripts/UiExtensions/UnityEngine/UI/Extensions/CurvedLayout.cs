using UnityEngine.UI;
using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class CurvedLayout : LayoutGroup
	{
		public override void CalculateLayoutInputVertical()
		{
		}

		public override void SetLayoutHorizontal()
		{
		}

		public override void SetLayoutVertical()
		{
		}

		public Vector3 CurveOffset;
		public Vector3 itemAxis;
		public float itemSize;
		public float centerpoint;
	}
}
