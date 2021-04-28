using UnityEngine;
using ClubPenguin.ScheduledWorldObjects;
using ClubPenguin;
using UnityEngine.UI;
using ClubPenguin.UI;

namespace ClubPenguin.IslandTargets
{
	public class IslandTargetsClockTowerController : MonoBehaviour
	{
		public IslandTargetPlaygroundController playgroundController;
		public IslandTargetsPlayground islandTargetsPlayground;
		public Animator ClockTowerAnimator;
		public AnalogClockController ClockController;
		public Transform RewardEffectsPosition;
		public GameObject FinishCamera;
		public GameObject ClockTimer;
		public GameObject ClockLargeHand;
		public GameObject ClockSmallHand;
		public ColorUtils.ColorAtPercent[] ClockTimerColors;
		public IslandTargetsSideScoreboard[] SideScoreboards;
		public string ClockTriggerFlyOut;
		public string ClockTriggerFlyBack;
		public string ParticipationPlayerPrefName;
		public string NormalScarecrowName;
		public string ScarecrowAppearTrigger;
		public GameObject ClockCountdown;
		public float scaleCountdownText;
		public float scaleReadyText;
		public int BestEverStreak;
		public Image ClockTimerImage;
		public InWorldText WinStreakText;
		public InWorldText DailyRecordText;
		public TextMesh GameStartCountdownTimerText;
		public InWorldText[] TimerTexts;
		public InWorldText[] ScoreTexts;
		public InWorldText[] WaveTexts;
		public float RoofOpenSpeed;
		public float RewardDelay;
		public float TimeoutDelay;
		public float RoundFailResetDelay;
		public float RoundWinResetDelay;
		public GameObject RewardEffectsPrefab;
		public string MusicEventName;
		public string EvergreenMusicTargetPath;
		public string CrateCoMusicTargetPath;
		public string[] RoundMusicNames;
		public string WinMusicName;
		public string LoseMusicName;
		public string[] RoundSFXTriggers;
		public string WinSFXTrigger;
		public string LoseSFXTrigger;
		public string LowTimeSFXTrigger;
		public string GameStartingWarningSFXTrigger;
		public string RoofOpenSFXTrigger;
		public float ReturnToEvergreenMusicWait;
		public string BI_Tier1Name;
	}
}
