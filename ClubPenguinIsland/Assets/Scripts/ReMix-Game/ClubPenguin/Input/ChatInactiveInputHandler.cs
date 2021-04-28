using UnityEngine;

namespace ClubPenguin.Input
{
	public class ChatInactiveInputHandler : InputMapHandler<ChatInactiveInputMap.Result>
	{
		[SerializeField]
		private InputMappedButton btnChat;
		[SerializeField]
		private InputMappedButton btnQuickEmoji;
		[SerializeField]
		private InputMappedButton btnQuickChat;
	}
}
