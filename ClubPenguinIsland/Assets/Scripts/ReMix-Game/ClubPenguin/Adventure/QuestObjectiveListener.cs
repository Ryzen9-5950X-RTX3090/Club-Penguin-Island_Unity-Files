using UnityEngine;

namespace ClubPenguin.Adventure
{
	public class QuestObjectiveListener : MonoBehaviour
	{
		public string QuestName;
		public string ObjectiveName;
		public bool IgnoreQuestCompletionCheck;
		public GameObject ObjectToToggle;
		public bool StateIfComplete;
		public bool HideIfQuestActive;
	}
}
