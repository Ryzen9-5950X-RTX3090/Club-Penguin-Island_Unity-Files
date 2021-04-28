using UnityEngine;
using System.Collections.Generic;
using HutongGames.PlayMaker;

namespace ClubPenguin.Adventure
{
	public class QuestTriggerRemoteFSM : MonoBehaviour
	{
		public List<Fsm> RemoteFsmList;
		public string EnterEvent;
		public string StayEvent;
		public string ExitEvent;
		public string Tag;
	}
}
