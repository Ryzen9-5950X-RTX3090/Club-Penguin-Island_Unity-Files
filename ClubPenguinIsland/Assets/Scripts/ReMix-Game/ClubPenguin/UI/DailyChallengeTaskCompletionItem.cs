using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.UI
{
	public class DailyChallengeTaskCompletionItem : MonoBehaviour
	{
		public Text CoinRewardText;
		public GameObjectSelector[] CompletionCheckMarks;
		public TintSelector[] CompletionBackgrounds;
		public GameObject CompletePanel;
		public GameObject ClaimedPanel;
		public GameObject MemberLockPanel;
	}
}
