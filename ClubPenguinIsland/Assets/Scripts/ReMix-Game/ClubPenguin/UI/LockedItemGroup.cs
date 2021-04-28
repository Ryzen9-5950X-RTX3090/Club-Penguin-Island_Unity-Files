using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class LockedItemGroup : LockedItemTag
	{
		public Transform ItemsContainer;
		public GameObject MemberLock;
		public GameObject LevelLock;
		public Text LevelText;
		public GameObject MascotLock;
		public GameObject UnlockedBG;
		public bool ShowUnlockedBG;
		public Image MascotIcon;
		public GameObject CustomLock;
		public Image BackgroundImage;
		public Sprite DefaultSprite;
		public Sprite StartSprite;
		public Sprite MiddleSprite;
		public Sprite EndSprite;
		public GameObject ThemeIconContainer;
		public Image ThemeIcon;
		public Text ThemeNameWithIcon;
		public GameObject ThemeWithoutIconContainer;
		public Text ThemeNameWithoutIcon;
	}
}
