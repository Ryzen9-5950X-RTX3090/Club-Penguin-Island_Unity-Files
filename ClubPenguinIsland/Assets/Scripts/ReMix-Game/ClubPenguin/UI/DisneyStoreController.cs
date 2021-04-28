using UnityEngine;

namespace ClubPenguin.UI
{
	public class DisneyStoreController : AbstractDisneyStoreController
	{
		public DisneyStoreHome Home;
		public GameObject BackButton;
		public DisneyStoreTrayAnimator TrayAnimator;
		[SerializeField]
		protected string StoreDefinitionKeyPath;
	}
}
