using UnityEngine;

namespace Fabric
{
	public class RandomComponent : Component
	{
		[SerializeField]
		public RandomComponentPlayMode _playMode;
		[SerializeField]
		public int[] _randomWeights;
		[SerializeField]
		public bool _looped;
		[SerializeField]
		public bool _delayOnFirstPlay;
		[SerializeField]
		public RandomComponentTriggerMode _triggerMode;
		[SerializeField]
		public float _delay;
		[SerializeField]
		public float _delayRandomization;
		[SerializeField]
		public float _delayMaxRandomization;
		[SerializeField]
		public bool _shareRandomNoRepeatHistory;
	}
}
