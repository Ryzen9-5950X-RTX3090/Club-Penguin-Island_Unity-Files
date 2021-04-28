using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.TutorialUI
{
	internal class TutorialTooltip : MonoBehaviour
	{
		public GameObject Bubble;
		public GameObject Pointer;
		public Text HeaderText;
		public Text SubHeaderText;
		public Text BodyText;
		public bool AutoDestroy;
		public float ScreenPadding;
	}
}
