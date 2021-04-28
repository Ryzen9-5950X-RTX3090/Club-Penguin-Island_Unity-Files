using System.Collections.Generic;
using ClubPenguin.Task;
using UnityEngine;

namespace ClubPenguin.UI
{
	public class DailyChallengesScrollRect : PagedScrollRect
	{
		public List<TaskDefinition.TaskCategory> IgnoredTaskCategories;
		public GameObject LoadingPanel;
	}
}
