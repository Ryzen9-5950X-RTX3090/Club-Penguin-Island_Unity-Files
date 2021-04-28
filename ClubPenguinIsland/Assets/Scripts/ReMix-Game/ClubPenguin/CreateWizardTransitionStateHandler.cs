using Disney.Kelowna.Common.SEDFSM;
using System;

namespace ClubPenguin
{
	public class CreateWizardTransitionStateHandler : AbstractStateHandler
	{
		[Serializable]
		public struct TransitionInfo
		{
			public CreateWizardStepAnimator Animator;
			public string TriggerName;
			public bool ChangeActive;
		}

		public TransitionInfo exitTransition;
		public TransitionInfo enterTransition;
		public string completeEvent;
		public string progressBarTrigger;
		public string avatarAnimation;
		public CreateWizardProgressTextInfo ProgressText;
	}
}
