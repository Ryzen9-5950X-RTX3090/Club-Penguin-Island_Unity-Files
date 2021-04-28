using UnityEngine;
using Disney.Kelowna.Common;
using ClubPenguin;
using UnityEngine.UI;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameTeamEndGamePopup : MonoBehaviour
	{
		public Transform TeamItemParent;
		public PartyGameTeamEndGamePopupReward RewardDisplay;
		public PrefabContentKey TeamItemContentKey;
		public TintSelector HeaderTintSelector;
		public SpriteSelector BackgroundSpriteSelector;
		public GameObjectSelector ParticleSelector;
		public Text HeaderText;
	}
}
