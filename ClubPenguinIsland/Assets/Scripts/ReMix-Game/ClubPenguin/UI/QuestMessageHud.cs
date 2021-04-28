using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Input;

namespace ClubPenguin.UI
{
	public class QuestMessageHud : MonoBehaviour
	{
		public Image MascotImage;
		public ButtonClickListener FullScreenButton;
		public Text MessageText;
		public Image ContinueImage;
		public Image BubbleBackgroundImage;
		public Image BubbleArrowImage;
		public Image CommunicatorIconImage;
		public MonoBehaviour[] componentsToToggle;
	}
}
