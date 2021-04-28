using ClubPenguin.UI;
using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.Igloo.UI
{
	public class IglooListScreenController : AbstractPlayerListController
	{
		public GameObject EmptyFriendsGraphic;
		public GameObject EmptyPopularGraphic;
		public GameObject LoadingSpinner;
		public Button friendsButton;
		public Button popularButton;
		public Transform emptyGraphicParent;
	}
}
