using Disney.Kelowna.Common;
using System;
using UnityEngine;

namespace ClubPenguin.Flow
{
	public class FlowStepAction : ScriptableAction
	{
		[Serializable]
		public struct Option
		{
			public string ButtonName;
			public ScriptableAction NextStep;
		}

		public GameObject PopupPrefab;
		public ScriptableAction SetupAction;
		public Option[] Options;
	}
}
