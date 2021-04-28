using UnityEngine.UI;
using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameEndGamePopup : BasicPopup
	{
		public Text TitleText;
		public GameObject ResultsPanel;
		public GameObject RewardsPanel;
		public Text CoinsText;
		public Text XpText;
		public GameObject CoinsPanel;
		public GameObject XpPanel;
		public GameObject Seperator;
		public Text ClaimButtonText;
		public string WinTitleToken;
		public string LoseTitleToken;
		public string TieTitleToken;
		public PrefabContentKey PlayerItemPrefab;
		public string WinSFXTrigger;
		public string LossSFXTrigger;
		public string TieSFXTrigger;
	}
}
