using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Igloo.UI
{
	public class DecorationCategoryManager : MonoBehaviour
	{
		[SerializeField]
		private GameObject recentDecorationsButton;
		[SerializeField]
		private GameObject inMyIglooButton;
		[SerializeField]
		private GameObject allCategoryButton;
		[SerializeField]
		private GameObject categoryButtonPrefab;
		[SerializeField]
		private ScrollRect scrollRect;
		[SerializeField]
		private HorizontalLayoutGroup layoutGroup;
	}
}
