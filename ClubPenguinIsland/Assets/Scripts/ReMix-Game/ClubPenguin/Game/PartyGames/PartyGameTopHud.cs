using UnityEngine;
using UnityEngine.UI;
using ClubPenguin;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameTopHud : MonoBehaviour
	{
		public GameObject HeaderPanel;
		public GameObject LoaderPanel;
		public GameObject HeaderSinglePanel;
		public GameObject InstructionPanel;
		public Text HeaderText;
		public Text HeaderSingleText;
		public Text InstructionText;
		public SpriteSelector[] ThemeSpriteSelectors;
		public TintSelector[] ThemeTintSelectors;
	}
}
