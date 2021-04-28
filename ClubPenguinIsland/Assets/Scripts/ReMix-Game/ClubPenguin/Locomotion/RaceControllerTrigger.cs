using UnityEngine;

namespace ClubPenguin.Locomotion
{
	public class RaceControllerTrigger : MonoBehaviour
	{
		public enum ActionType
		{
			StartingLine = 0,
			FinishLine = 1,
			EndOfTrack = 2,
		}

		public bool IsMemberOnly;
		public ActionType Action;
		public string Tag;
	}
}
