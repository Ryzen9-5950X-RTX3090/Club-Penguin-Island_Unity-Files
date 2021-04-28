using UnityEngine;

namespace Fabric
{
	public class SideChain : MonoBehaviour
	{
		[SerializeField]
		public VolumeMeter _volumeMeter;
		[SerializeField]
		public Component _componentToListen;
		[SerializeField]
		public bool _useComponentIsPlayingFlag;
		[SerializeField]
		public float gain;
		[SerializeField]
		public float fadeUpRate;
		[SerializeField]
		public float fadeDownRate;
	}
}
