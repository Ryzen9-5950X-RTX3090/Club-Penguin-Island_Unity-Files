using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	public class SwitchComponent : Component
	{
		[Serializable]
		public class GlobalSwitchContainer
		{
			[SerializeField]
			public string _switchName;
			[SerializeField]
			public List<Component> _components;
		}

		[SerializeField]
		public Component _selectedComponent;
		[SerializeField]
		public bool _startOnSwitch;
		[SerializeField]
		public bool _syncToMusicOnFirstPlay;
		[SerializeField]
		public SwitchComponentSwitchType _switchComponentSwitchType;
		[SerializeField]
		public bool _useGlobalSwitch;
		[SerializeField]
		public string _globalSwitch;
		[SerializeField]
		public List<SwitchComponent.GlobalSwitchContainer> _globalSwitchMap;
	}
}
