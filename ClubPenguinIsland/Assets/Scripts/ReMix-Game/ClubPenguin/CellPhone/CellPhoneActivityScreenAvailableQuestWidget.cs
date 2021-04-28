using UnityEngine;
using System;
using ClubPenguin.Adventure;
using System.Collections.Generic;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.CellPhone
{
	public class CellPhoneActivityScreenAvailableQuestWidget : MonoBehaviour
	{
		[Serializable]
		public class MascotToSelectorIndex
		{
			public MascotDefinition Mascot;
			public int SelectorIndex;
		}

		public List<CellPhoneActivityScreenAvailableQuestWidget.MascotToSelectorIndex> MascotsToSelectorIndexs;
		public Text CoinText;
		public Text XPText;
		public List<TintSelector> TintSelectors;
		public List<GameObjectSelector> GameObjectSelectors;
		public List<SpriteSelector> SpriteSelectors;
		public List<Text> TitleTexts;
	}
}
