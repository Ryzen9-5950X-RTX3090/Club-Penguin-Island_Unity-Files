using UnityEngine;
using HutongGames.PlayMaker;

namespace ClubPenguin.Adventure
{
	public class QuestFireworkCannon : MonoBehaviour
	{
		public GameObject Trigger;
		public string CannonEnabledAnimTrigger;
		public string CannonActiveAnimTrigger;
		public string CannonFireAnimTrigger;
		public string CannonSlowTimerAnimBool;
		public string FireEvent;
		public FsmGameObject FireEventTargetObject;
	}
}
