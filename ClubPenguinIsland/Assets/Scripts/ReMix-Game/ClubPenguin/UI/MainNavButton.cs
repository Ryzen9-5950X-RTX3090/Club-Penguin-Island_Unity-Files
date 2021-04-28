using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class MainNavButton : MonoBehaviour
	{
		public Sprite NormalSprite;
		public Sprite SelectedSprite;
		public Sprite DisabledSprite;
		public Sprite UnavailableSprite;
		public Image Image;
		public bool ChangeAlphaOnDisable;
		public bool IsSelectedAtStart;
		public string ScreenContainerContentState;
	}
}
