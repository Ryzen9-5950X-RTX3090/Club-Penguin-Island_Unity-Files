using UnityEngine;
using ClubPenguin.UI;
using ClubPenguin.Core;

namespace ClubPenguin
{
	public class SunsetPartyController : MonoBehaviour
	{
		public SceneDefinition EndCreditsScene;
		public string SunsetPartyActivePlayerPrefsKey;
		public string SunsetQuestCompletedPlayerPrefsKey;
		public PromptDefinitionKey ShowCreditsDuringPartyPromptKey;
		public PromptDefinitionKey SunsetPartyPromptKey;
		public PromptDefinitionKey SunsetPartyEvergreenPromptKey;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public string[] SunsetQuestPlayerPrefsKeys;
	}
}
