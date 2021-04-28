using UnityEngine;

namespace ClubPenguin.Holiday
{
	public class InteractiveDecorationTarget : InteractiveDecoration
	{
		public InteractiveDecorationController DecorationController;
		public Animator TargetAnimator;
		public string HitAnimName;
		public string SwitchAnimName;
		public string AudioTargetSwitch;
		public string AudioTargetHit;
	}
}
