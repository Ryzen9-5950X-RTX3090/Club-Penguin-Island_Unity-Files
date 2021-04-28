using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class EditableItemController : MonoBehaviour
	{
		public Text TitleText;
		public Button EditButton;
		public Button BackButton;
		public PooledCellsScrollRect EditableItemPooledScrollRect;
		public GameObject LoadingOverlay;
	}
}
