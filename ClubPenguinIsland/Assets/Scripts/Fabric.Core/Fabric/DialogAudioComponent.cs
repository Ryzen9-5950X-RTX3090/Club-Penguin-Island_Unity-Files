using UnityEngine;

namespace Fabric
{
	public class DialogAudioComponent : AudioComponent
	{
		[SerializeField]
		public string _audioClipReference;
		[SerializeField]
		public DialogAudioLoadedFrom _dialogAudioLoadedFrom;
	}
}
