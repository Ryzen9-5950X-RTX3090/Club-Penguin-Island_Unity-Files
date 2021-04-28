using UnityEngine;

namespace Fabric
{
	public class RandomAudioClipComponent : AudioComponent
	{
		[SerializeField]
		public RandomComponentPlayMode _playMode;
		[SerializeField]
		public int[] _randomWeights;
		[SerializeField]
		public bool _shareRandomNoRepeatHistory;
		[SerializeField]
		public AudioClip[] _audioClips;
		[SerializeField]
		public bool _looped;
		[SerializeField]
		public bool _delayOnFirstPlay;
		[SerializeField]
		public float _loopDelay;
		[SerializeField]
		public float _delayRandomization;
		[SerializeField]
		public float _delayMaxRandomization;
	}
}
