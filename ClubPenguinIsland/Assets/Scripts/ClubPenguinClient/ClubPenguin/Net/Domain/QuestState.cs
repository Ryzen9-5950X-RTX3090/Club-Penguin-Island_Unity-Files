using System;

namespace ClubPenguin.Net.Domain
{
	[Serializable]
	public class QuestState
	{
		public string questId;
		public QuestStatus status;
		public QuestObjectives completedObjectives;
		public int timesCompleted;
	}
}
