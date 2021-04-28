using UnityEngine;
using ClubPenguin.Cinematography;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin;
using Disney.Kelowna.Common;

namespace ClubPenguin.Game.PartyGames
{
	public class DanceBattleVisualsController : MonoBehaviour
	{
		public DanceBattleLobbyMmoItemObserver LobbyObserver;
		public DanceBattleMmoItemObserver GameObserver;
		public DanceBattleAnimationEventHandler AnimEventHandler;
		public CameraController LobbyCamera;
		public DanceBattleFloorController FloorController;
		public Animator StageAnimator;
		public Animator CadenceAnimator;
		public GameObject[] Screens;
		public GameObject MoveIconContainer;
		public GameObject MoveIconInputContainer;
		public UITimer TurnTimer;
		public Text RoundText;
		public Text WinnerText;
		public TintSelector WinnerBG;
		public GameObjectSelector EndGameParticleSelector;
		public GameObject RemotePenguinScreen;
		public PrefabContentKey MoveIconKey;
		public PrefabContentKey LobbyPrefabKey;
		public PrefabContentKey TopHudPrefabKey;
		public CameraController DanceCamera;
		public CameraController ScreenCamera;
		public Transform ScreenCameraTarget;
		public Transform DanceCameraTarget;
		public CountdownTimer PreLobbyTimer;
		public CountdownTimer LobbyTimer;
		public DanceBattleScoreBar RedScoreBar;
		public DanceBattleScoreBar BlueScoreBar;
		public string MusicTargetObjectPath;
		public float DanceMusicStartDelay;
	}
}
