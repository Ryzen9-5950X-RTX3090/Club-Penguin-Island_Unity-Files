using UnityEngine;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class Signal : MonoBehaviour
	{
		[SerializeField]
		protected StateTraverser mTraverser;
		[SerializeField]
		protected State mStartState;
		[SerializeField]
		protected State mEndState;
		[SerializeField]
		protected Transition mTransition;
	}
}
