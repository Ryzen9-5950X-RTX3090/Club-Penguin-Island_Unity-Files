using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	[Serializable]
	public class GlobalSwitch
	{
		[Serializable]
		public class Switch
		{
			[SerializeField]
			public string _name;
			[SerializeField]
			public float _RTPParameterMin;
			[SerializeField]
			public float _RTPParameterMax;
		}

		[SerializeField]
		public List<GlobalSwitch.Switch> _switches;
		[SerializeField]
		public bool _useGlobalParameter;
		[SerializeField]
		public string _defaultSwitch;
	}
}
