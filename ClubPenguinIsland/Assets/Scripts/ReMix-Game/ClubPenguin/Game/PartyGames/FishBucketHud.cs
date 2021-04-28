using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	public class FishBucketHud : MonoBehaviour
	{
		public Text HeaderText;
		public GameObject PlayerBucketPanel;
		public Image FishProgressBar;
		public GameObject PickingTurnTextPanel;
		public GameObject GameOverText;
		public GameObject GamePanel;
		public GameObject InstructionText;
		public float InstructionTime;
		public float ProgressBarAnimTime;
		public ColorUtils.ColorAtPercent[] ProgressBarColors;
		public Vector3 ScorePopupOffset;
		public float ScorePopupDelay;
		public float ScorePopupDestroyTime;
		public float InkedPopupDestroyTime;
		public string GameInstructionSFXTrigger;
		public string GameStartSFXTrigger;
		public string ShotStartSFXTrigger;
		public string InkWipeSFXTrigger;
	}
}
