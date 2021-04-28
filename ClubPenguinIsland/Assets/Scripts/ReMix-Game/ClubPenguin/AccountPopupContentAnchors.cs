using UnityEngine;

namespace ClubPenguin
{
	public class AccountPopupContentAnchors : MonoBehaviour
	{
		public enum VerticalAlignment
		{
			Top = 0,
			Middle = 1,
			Bottom = 2,
		}

		public enum HorizontalAlignment
		{
			Left = 0,
			Center = 1,
			Right = 2,
		}

		public VerticalAlignment VerticalAlign;
		public HorizontalAlignment HorizontalAlign;
	}
}
