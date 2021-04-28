using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class ChatScreenPanelScrollButtons : MonoBehaviour
	{
		[SerializeField]
		private Button leftButton;
		[SerializeField]
		private Button rightButton;
		[SerializeField]
		private Vector2 scrollVelocity;
		[SerializeField]
		private GameObject ChatScreenPanel;
	}
}
