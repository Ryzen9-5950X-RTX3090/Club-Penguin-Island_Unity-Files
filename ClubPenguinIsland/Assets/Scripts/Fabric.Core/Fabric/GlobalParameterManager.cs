using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class GlobalParameterManager
	{
		[Serializable]
		public class GlobalParametersFastList : FastList<string, GlobalParameter>
		{
		}

		[Serializable]
		public class GlobalSwitchFastList : FastList<string, GlobalSwitch>
		{
		}

		[SerializeField]
		public GlobalParametersFastList _globalRTParameters;
		[SerializeField]
		public GlobalSwitchFastList _globalSwitches;
	}
}
