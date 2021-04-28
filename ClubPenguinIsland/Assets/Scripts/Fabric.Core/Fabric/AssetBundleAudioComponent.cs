using UnityEngine;

namespace Fabric
{
	public class AssetBundleAudioComponent : AudioComponent
	{
		[SerializeField]
		private string _audioClipReference;
		[SerializeField]
		private string _fallbackLocation;
	}
}
