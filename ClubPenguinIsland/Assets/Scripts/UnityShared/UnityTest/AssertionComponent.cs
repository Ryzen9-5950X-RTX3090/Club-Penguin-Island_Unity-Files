using System;
using UnityEngine;

namespace UnityTest
{
	[Serializable]
	public class AssertionComponent : MonoBehaviour
	{
		[SerializeField]
		public float checkAfterTime;
		[SerializeField]
		public bool repeatCheckTime;
		[SerializeField]
		public float repeatEveryTime;
		[SerializeField]
		public int checkAfterFrames;
		[SerializeField]
		public bool repeatCheckFrame;
		[SerializeField]
		public int repeatEveryFrame;
		[SerializeField]
		public bool hasFailed;
		[SerializeField]
		public CheckMethod checkMethods;
		[SerializeField]
		private ActionBase m_ActionBase;
		[SerializeField]
		public int checksPerformed;
	}
}
