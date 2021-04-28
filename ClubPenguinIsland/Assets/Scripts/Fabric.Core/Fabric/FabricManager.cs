using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	public class FabricManager : MonoBehaviour
	{
		public enum OnApplicationPauseBehavior
		{
			IgnoreNone = 0,
			IgnorePauseTrue = 1,
			IgnorePauseFalse = 2,
			IgnoreAll = 3,
		}

		[SerializeField]
		public bool _dontDestroyOnLoad;
		[SerializeField]
		public int _audioSourcePool;
		[SerializeField]
		public float _audioSourcePoolFadeInTime;
		[SerializeField]
		public float _audioSourcePoolFadeOutTime;
		[SerializeField]
		public bool _showAllInstances;
		[SerializeField]
		public bool _enableVirtualization;
		[SerializeField]
		public bool enableTimelineAssetLoader;
		[SerializeField]
		public bool _createEventListeners;
		[SerializeField]
		public bool _useFullPathForEventListeners;
		[SerializeField]
		public double _transitionThreshold;
		[SerializeField]
		public double _volumeThreshold;
		[SerializeField]
		public AudioBusManager _audioBusManager;
		[SerializeField]
		public CustomCurvesManager _customCurvesManager;
		[SerializeField]
		public bool _enableDebugLog;
		[SerializeField]
		public bool _bakeComponentInstances;
		[SerializeField]
		public bool _allowExternalGroupComponents;
		[SerializeField]
		public Vector3 _forceAxisVector;
		[SerializeField]
		private List<LanguageProperties> _languages;
		[SerializeField]
		private int _activeLanguage;
		[SerializeField]
		public int _defaultLanguage;
		[SerializeField]
		private SampleManager _sampleManager;
		[SerializeField]
		public List<MusicTimeSittings> _musicTimeSignatures;
		[SerializeField]
		public string _fabricEditorPath;
		[SerializeField]
		public VRAudioManager _VRAudioManager;
		[SerializeField]
		public AudioSourcePool _audioSourcePoolManager;
		[SerializeField]
		public OnApplicationPauseBehavior _onApplicationPauseBehavior;
	}
}
