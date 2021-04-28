using UnityEngine;

namespace ClubPenguin.Actions
{
	public class SendMessageAction : Action
	{
		public GameObject TargetObject;
		public string MethodName;
		public string DataString;
		public bool IsReceiverRequired;
	}
}
