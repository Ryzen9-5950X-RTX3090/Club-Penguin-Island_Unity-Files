using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class UICornerCut : UIPrimitiveBase
	{
		public Vector2 cornerSize;
		public bool cutUL;
		public bool cutUR;
		public bool cutLL;
		public bool cutLR;
		public bool makeColumns;
		public bool useColorUp;
		public Color32 colorUp;
		public bool useColorDown;
		public Color32 colorDown;
	}
}
