using ClubPenguin.SceneManipulation;
using UnityEngine.UI;
using UnityEngine;

namespace ClubPenguin
{
	internal class IglooPropertiesCard : SceneLayoutIdComponent
	{
		public TintSelector[] BackgroundTintSelectors;
		public Image IglooPreviewImage;
		public Text CreatedDate;
		public Text LastEditedDate;
		public int LastEditedDateMaxChars;
		public GameObject DeleteIglooButton;
		public GameObject ActiveStatusOpen;
		public GameObject ActiveStatusClosed;
		public GameObject ActiveStateOutline;
		public GameObject LockedOverlay;
		public GameObject MemberLockedOverlay;
		public GameObject ProgressionLockedOverlay;
	}
}
