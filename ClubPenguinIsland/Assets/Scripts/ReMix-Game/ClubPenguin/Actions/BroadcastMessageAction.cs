using UnityEngine;

namespace ClubPenguin.Actions
{
	public class BroadcastMessageAction : Action
	{
		public GameObject TargetObject;
		public string MethodName;
		public string DataString;
		public bool IsReceiverRequired;
	}
}
