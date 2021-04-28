using UnityEngine;
using System.Collections.Generic;
using UnityEngine.Audio;

namespace Fabric
{
	public class AudioMixer : MonoBehaviour
	{
		[SerializeField]
		public List<AudioMixer> _audioMixers;
	}
}
