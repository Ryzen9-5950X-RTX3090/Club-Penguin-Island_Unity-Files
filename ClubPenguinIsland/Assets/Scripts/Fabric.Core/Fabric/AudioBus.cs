using System;
using UnityEngine;
using UnityEngine.Audio;

namespace Fabric
{
	[Serializable]
	public class AudioBus
	{
		[SerializeField]
		public string _name;
		[SerializeField]
		public float _volume;
		[SerializeField]
		public float _pitch;
		[SerializeField]
		public bool _limitInstances;
		[SerializeField]
		public int _instanceLimit;
		[SerializeField]
		public bool _limitAudioComponents;
		[SerializeField]
		public int _audioComponentsLimit;
		[SerializeField]
		public AudioMixerGroup _audioMixerGroup;
	}
}
