using UnityEngine;

namespace ClubPenguin.Actions
{
	public class StartMiniGameAction : Action
	{
		public FsmTemplate MiniGameFSM;
		public GameObject ActionGraphOnExit;
		public bool TriggerOnRemotePlayer;
	}
}
