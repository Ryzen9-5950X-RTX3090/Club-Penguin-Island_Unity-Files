using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	public class AudioComponent : Component
	{
		[SerializeField]
		private AudioClip _audioClip;
		[SerializeField]
		public AudioClipHandle _audioClipHandle;
		[SerializeField]
		public bool _dynamicAudioClipLoading;
		[SerializeField]
		public float _dynamicAudioClipUnloadDelay;
		[SerializeField]
		public bool _dynamicAsyncAudioClipLoading;
		[SerializeField]
		public AudioClipAssetPath _audioClipAssetPath;
		[SerializeField]
		private double _delay;
		[SerializeField]
		private int _delayInBeats;
		[SerializeField]
		private bool _loop;
		[SerializeField]
		private bool _ignoreNativeLoop;
		[SerializeField]
		private bool _randomizeStart;
		[SerializeField]
		private float _randomizeStartPercentage;
		[SerializeField]
		public int _numLoops;
		[SerializeField]
		public bool _loopMarkersLoaded;
		[SerializeField]
		public bool _useLoopMarkers;
		[SerializeField]
		public int _startLoopMarkerIndex;
		[SerializeField]
		public int _endLoopMarkerIndex;
		[SerializeField]
		public int _loopRegionIndex;
		[SerializeField]
		public bool _randomizeStartLoopMarkerIndex;
		[SerializeField]
		public bool _randomizeEndLoopMarkerIndex;
		[SerializeField]
		public bool _randomizeRegionIndex;
		[SerializeField]
		private bool _dontPlay;
		[SerializeField]
		private bool _dontStopOnDestroy;
		[SerializeField]
		private bool _ignoreVirtualization;
		[SerializeField]
		public bool _randomizePosition;
		[SerializeField]
		public float _randomizeMinPosition;
		[SerializeField]
		public float _randomizeMaxPosition;
		[SerializeField]
		public bool _syncWithMusicTime;
		[SerializeField]
		public List<Marker> _markers;
		[SerializeField]
		public bool _syncRegionsWithTempo;
		[SerializeField]
		public float _audioClipTempo;
		[SerializeField]
		public List<Region> _regions;
	}
}
