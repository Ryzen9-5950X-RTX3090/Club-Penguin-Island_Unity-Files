using UnityEngine;
using System.Collections.Generic;
using ClubPenguin;

namespace ClubPenguin.PartyGames
{
	public class TubeRaceEndGamePopup : MonoBehaviour
	{
		public Transform rowParentTransform;
		public TubeRaceEndGamePopupReward Reward;
		public GameObject CalculatingResultsPanel;
		public GameObject RewardPanel;
		public GameObject ClaimButtonPanel;
		public GameObject EndGameButtonPanel;
		public Animator ResultsAnimator;
		public string ResultsAnimatorTrigger;
		public List<TintSelector> TintSelectors;
		public List<SpriteSelector> SpriteSelectors;
	}
}
