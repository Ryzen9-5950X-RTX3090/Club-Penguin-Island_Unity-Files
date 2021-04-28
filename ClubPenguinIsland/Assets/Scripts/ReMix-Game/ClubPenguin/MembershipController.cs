using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	public class MembershipController : MonoBehaviour
	{
		public PrefabContentKey MembershipPromptPrefabContentKey;
		public string offerContinueEvent;
		public string loginEvent;
		public string termsContinueEvent;
		public string thanksContinueEvent;
		public string backToStartEvent;
		public string firstTimeSKU;
		public string reSubscribingSKU;
		public AccountFlowData accountFlowData;
	}
}
