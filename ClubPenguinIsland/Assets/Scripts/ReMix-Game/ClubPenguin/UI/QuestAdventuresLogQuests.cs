using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.UI
{
	public class QuestAdventuresLogQuests : MonoBehaviour
	{
		public ScrollRect ScrollRect;
		public Transform ScrollContent;
		public Text NoQuestsText;
		public GameObject LogPanel;
		public PersistentBreadcrumbTypeDefinitionKey BreadcrumbType;
	}
}
