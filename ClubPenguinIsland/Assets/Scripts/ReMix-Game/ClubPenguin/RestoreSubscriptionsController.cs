using UnityEngine;
using Disney.Kelowna.Common;
using UnityEngine.UI;

namespace ClubPenguin
{
	public class RestoreSubscriptionsController : MonoBehaviour
	{
		public PrefabContentKey MembershipPromptPrefabContentKey;
		public RestoreSuccessContentController SuccessPrefab;
		public Button RestoreButton;
		public Text RestoreButtonText;
		public GameObject RestoreButtonPreloader;
		public string MembershipEvent;
		public string NoMembershipEvent;
		public string AllAccessEventMembershipEvent;
	}
}
