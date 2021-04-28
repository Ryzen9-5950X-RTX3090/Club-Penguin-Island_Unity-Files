using UnityEngine;

namespace ClubPenguin
{
	public class GameStateController : MonoBehaviour
	{
		public string EnterGameEvent;
		public string StartFtueEvent;
		public string ContinueFtueEvent;
		public string MixLoginEvent;
		public string StartGameEvent;
		public string ZoneConnectingEvent;
		public string ZoneConnectedEvent;
		public string SceneWithoutZoneEvent;
		public string PausedEvent;
		public string OfflineEvent;
		public string DefaultEvent;
		public string LoadLoginEvent;
		public string LoginSuccessEvent;
		public string LoadCreateEvent;
		public string LoadMembershipEvent;
		public string ContinueFromFTUEEvent;
		public GameSceneConfig SceneConfig;
		public FTUEConfig FTUEConfig;
	}
}
