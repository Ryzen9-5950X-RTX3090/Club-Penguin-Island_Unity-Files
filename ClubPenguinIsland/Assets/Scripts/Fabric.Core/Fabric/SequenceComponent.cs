using UnityEngine;

namespace Fabric
{
	public class SequenceComponent : Component
	{
		[SerializeField]
		public Component[] _playlist;
		[SerializeField]
		public bool[] _playlistPlayToEnd;
		[SerializeField]
		public bool _resetOnFirstPlay;
		[SerializeField]
		public bool _syncToMusicOnFirstPlay;
		[SerializeField]
		public float _transitionOffset;
		[SerializeField]
		public float _transitionOffsetRandomization;
		[SerializeField]
		public SequenceComponentType _sequenceType;
		[SerializeField]
		public SequenceComponentPlayMode _sequencePlayMode;
		[SerializeField]
		public SequenceComponentAdvanceMode _sequenceAdvanceMode;
		[SerializeField]
		public bool _syncAdvanceBetweenInstances;
	}
}
