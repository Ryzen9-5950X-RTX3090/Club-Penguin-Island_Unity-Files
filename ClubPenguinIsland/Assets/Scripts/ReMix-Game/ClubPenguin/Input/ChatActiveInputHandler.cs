using UnityEngine;

namespace ClubPenguin.Input
{
	public class ChatActiveInputHandler : InputMapHandler<ChatActiveInputMap.Result>
	{
		[SerializeField]
		private string target;
		[SerializeField]
		private string targetEvent;
	}
}
