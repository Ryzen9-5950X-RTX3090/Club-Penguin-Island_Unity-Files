using UnityEngine;

namespace Fabric
{
	public class GroupComponent : Component
	{
		[SerializeField]
		public bool _showInMixerView;
		[SerializeField]
		public string _targetGroupComponentPath;
		[SerializeField]
		public bool _ignoreUnloadUnusedAssets;
		[SerializeField]
		public EventEditor _eventEditor;
	}
}
