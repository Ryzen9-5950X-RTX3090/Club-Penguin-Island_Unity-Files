using UnityEngine;
using UnityEngine.UI;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class FriendRequestsSubsetController : MonoBehaviour
	{
		public GameObject FriendsRequestsHeader;
		public Text TitleText;
		public Transform FriendRequestsContainer;
		public PrefabContentKey FriendRequestItemContentKey;
		public RuntimeAnimatorController PenguinAnimatorController;
		public string IdlePenguinState;
	}
}
