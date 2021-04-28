using UnityEngine;

namespace ClubPenguin
{
	public class TriggerFSMEvent : MonoBehaviour
	{
		public enum TriggerTime
		{
			OnEnter = 0,
			OnExit = 1,
		}

		public string ColliderTag;
		public string EventName;
		public TriggerTime TriggerOn;
	}
}
