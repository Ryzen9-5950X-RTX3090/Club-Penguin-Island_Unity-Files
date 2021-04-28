using ClubPenguin.UI;
using UnityEngine;

namespace ClubPenguin
{
	public class CreatePopupWizardContentController : CreatePopupContentController
	{
		[SerializeField]
		private AvatarRenderTextureComponent[] shardAvatarRenderers;
		[SerializeField]
		private GameObject[] shardProgressBarPanels;
		[SerializeField]
		private Animator[] shardProgressBarAnimators;
		[SerializeField]
		private GameObject[] shardTransitionStateHandlers;
		[SerializeField]
		private GameObject[] shardInitialActiveFormContainers;
		[SerializeField]
		private CreateWizardProgressTextInfo[] shardInitialProgressText;
		[SerializeField]
		private string swrveResourceUniqueID;
	}
}
