using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class AudioClipHandle
	{
		[SerializeField]
		private string _audioClipPath;
		[SerializeField]
		private bool _useAudioClipPath;
	}
}
