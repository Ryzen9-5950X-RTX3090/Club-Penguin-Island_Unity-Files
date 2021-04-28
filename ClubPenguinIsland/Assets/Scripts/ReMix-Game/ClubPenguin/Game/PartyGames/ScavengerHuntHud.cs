using UnityEngine;
using ClubPenguin;
using UnityEngine.UI;

namespace ClubPenguin.Game.PartyGames
{
	public class ScavengerHuntHud : MonoBehaviour
	{
		public int SecondsLeftForClockTimer;
		public SpriteSelector ItemUIPrefab;
		public Text CountDownText;
		public Text HeaderText;
		public Text InstructionText;
		public Transform ItemObjectContainer;
		public Text TimeText;
		public Image TimerImage;
		public ColorUtils.ColorAtPercent[] TimerColors;
		public GameObject TimeInactiveObject;
		public GameObject ClockParentGameObject;
		public Animator ClockAnimator;
		public GameObject FinderBlinkGameObject;
		public SpriteSelector FinderBlinkImage;
	}
}
