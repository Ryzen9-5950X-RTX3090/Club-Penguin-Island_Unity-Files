using UnityEngine;

namespace Fabric
{
	public class Preset : MonoBehaviour
	{
		[SerializeField]
		public bool _isPersistent;
		[SerializeField]
		public bool _allowAutoGroupComponentUpdates;
		[SerializeField]
		public string _eventName;
		[SerializeField]
		public PresetActivationMode _activationMode;
		[SerializeField]
		public bool _includeGameObject;
		public GameObject _parentGameObject;
	}
}
