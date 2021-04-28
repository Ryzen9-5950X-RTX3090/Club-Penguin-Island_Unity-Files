using UnityEngine;
using UnityEngine.UI;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	public class FullScreenChatController : MonoBehaviour
	{
		public Transform ChatPanel;
		public RuntimeAnimatorController PenguinAnimatorController;
		public Button JumpToNewMessageButton;
		[SerializeField]
		private PrefabContentKey localChatBlockContentKey;
		[SerializeField]
		private PrefabContentKey remoteChatBlockContentKey;
		[SerializeField]
		private PrefabContentKey friendChatBlockContentKey;
	}
}
