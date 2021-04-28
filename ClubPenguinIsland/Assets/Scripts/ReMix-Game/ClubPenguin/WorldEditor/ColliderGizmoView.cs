using UnityEngine;

namespace ClubPenguin.WorldEditor
{
	public class ColliderGizmoView : MonoBehaviour
	{
		public enum ColliderColorType
		{
			None = 0,
			ColliderWall = 1,
			InteractiveZone = 2,
			InteractiveObject = 3,
			QuickChatZone = 4,
			Collectible = 5,
			TextTrigger = 6,
			Mascots = 7,
			CameraZone = 8,
			LocomotionTrigger = 9,
			DailyChallenge = 10,
			QuestTriggers = 11,
		}

		public ColliderColorType colliderColorType;
	}
}
