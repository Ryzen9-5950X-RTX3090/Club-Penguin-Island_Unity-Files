using UnityEngine;

namespace ClubPenguin.MiniGames.TiltATube
{
	public class TiltATubeController : MonoBehaviour
	{
		public int StartOnMinute;
		public float SecondsForSorting;
		public float SecondsRoundLength;
		public int NumberOfShrinks;
		public float MaxDiameter;
		public float MinDiameter;
		public float MaxTiltAngle;
		public float SecondsTiltCycle;
		public float RotationSpeed;
		public string TextBuoyDefault;
		public GameObject BuoyObject;
		public GameObject BuoyAntenna;
		public GameObject BuoyBulbOn;
		public GameObject BuoyBulbOff;
		public GameObject PlatformObject;
		public GameObject PlatformTube;
		public GameObject PlatformRotation;
		public GameObject PlatformShrink;
		public GameObject PlatformTilt;
		public GameObject PlatformCollider;
		public GameObject PlatformSign;
		public GameObject PlatformOneWayIn;
		public GameObject PlatformOneWayOut;
		public GameObject PlatformPistonSpring;
		public Vector3 PistonSpringOffset;
		public GameObject LaunchpadObject;
		public Vector3 LaunchpadOffset;
		public GameObject SignGameOver;
		public PlayersInVolume SyncPlayerVolume;
		public string PlatformVolumeId;
		public GameObject HelpSign;
		public GameObject ParticlesGameOver;
		public Vector3 ParticlesGameOverOffset;
		public GameObject AudioPrefab;
		public GameObject AudioAnchor;
		public string BuoyAppear;
		public string BuoyIdle;
		public string BuoyAntennaAppear;
		public string BuoyAntennaBulbOn;
		public string BuoyAntennaBulbOff;
		public string BuoyDisappear;
		public string PlatformDescends;
		public string PlatformTouchdown;
		public string LaunchpadAppears;
		public string LaunchpadActivated;
		public string CountdownWarning;
		public string CountdownSignDisappear;
		public string LaunchpadDisappear;
		public string GamePowerUp;
		public string GameStart;
		public string GamePlaying;
		public string PlayerFalls;
		public string GameOver;
		public string GameOverPiston;
		public string GameOverCelebration;
		public string PlatformClearArea;
		public string PlatformAscendStartup;
		public string PlatformAscend;
		public GameObject MusicMixTrigger;
		public string MusicEventName;
		public string ParamWarmup;
		public string ParamGamePlay;
		public string ParamWin;
		public string ParamLose;
	}
}
