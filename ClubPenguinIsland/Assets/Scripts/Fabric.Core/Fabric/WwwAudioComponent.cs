using UnityEngine;

namespace Fabric
{
	public class WwwAudioComponent : AudioComponent
	{
		[SerializeField]
		public wwwFileLocation _fileLocation;
		[SerializeField]
		public AudioType _audioType;
		public bool _is3D;
		[SerializeField]
		public bool _isStreaming;
		[SerializeField]
		public bool _languageSupported;
		[SerializeField]
		public bool _loadOnStart;
		[SerializeField]
		public bool _ignoreUnloadUnusedAssets;
		[SerializeField]
		private string _audioClipReference;
	}
}
