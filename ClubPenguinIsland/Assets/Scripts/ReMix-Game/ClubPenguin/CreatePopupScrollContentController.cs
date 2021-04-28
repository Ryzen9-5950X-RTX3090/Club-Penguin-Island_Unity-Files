using UnityEngine.UI;
using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	public class CreatePopupScrollContentController : CreatePopupContentController
	{
		[SerializeField]
		public Button signInButton;
		[SerializeField]
		private FormFieldVerticalScrollFocusPositioner scrollPositioner;
	}
}
