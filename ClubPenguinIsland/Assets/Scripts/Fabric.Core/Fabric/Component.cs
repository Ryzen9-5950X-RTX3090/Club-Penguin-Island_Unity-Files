using UnityEngine;
using System;
using UnityEngine.Audio;

namespace Fabric
{
	public class Component : MonoBehaviour
	{
		[Serializable]
		public class MIDIProperties
		{
			[SerializeField]
			public bool _overrideParentNoteTracking;
			[SerializeField]
			public bool _noteTracking;
			[SerializeField]
			public int _keyRangeMin;
			[SerializeField]
			public int _keyRangeMax;
			[SerializeField]
			public int _velocityRangeMin;
			[SerializeField]
			public int _velocityRangeMax;
			[SerializeField]
			public int _channelRangeMin;
			[SerializeField]
			public int _channelRangeMax;
			[SerializeField]
			public int _rootNote;
			[SerializeField]
			public int _transpose;
			[SerializeField]
			public int _velocity;
		}

		public enum NotifyParentType
		{
			ComponentHasFinished = 0,
			AllComponentsHaveFinished = 1,
		}

		[SerializeField]
		public int _numVirtualizationEvents;
		[SerializeField]
		protected int _maxInstances;
		[SerializeField]
		protected ComponentStealingBehaviour _stealingBehaviour;
		[SerializeField]
		protected float _minimumPlaybackInterval;
		[SerializeField]
		protected bool _overrideParentVolume;
		[SerializeField]
		protected float _volume;
		[SerializeField]
		protected float _volumeRandomization;
		[SerializeField]
		protected bool _mute;
		[SerializeField]
		protected bool _overrideParentPitch;
		[SerializeField]
		protected float _pitch;
		[SerializeField]
		protected float _pitchRandomization;
		[SerializeField]
		protected bool _override2DProperties;
		[SerializeField]
		protected float _pan2D;
		[SerializeField]
		protected float _pan2DRandomization;
		[SerializeField]
		protected bool _override3DProperties;
		[SerializeField]
		protected int _priority;
		[SerializeField]
		protected float _panLevel;
		[SerializeField]
		protected float _spreadLevel;
		[SerializeField]
		protected bool _spatialize;
		[SerializeField]
		protected float _dopplerLevel;
		[SerializeField]
		protected float _maxDistance;
		[SerializeField]
		protected float _minDistance;
		[SerializeField]
		protected AudioRolloffMode _rolloffMode;
		[SerializeField]
		public ComponentCustomCurvesType _customCurvesType;
		[SerializeField]
		public string _customCurvesName;
		[SerializeField]
		protected bool _overrideFadeProperties;
		[SerializeField]
		protected float _fadeInTime;
		[SerializeField]
		protected float _fadeInCurve;
		[SerializeField]
		protected float _fadeOutTime;
		[SerializeField]
		public float _fadeOutCurve;
		[SerializeField]
		public float _reverbZoneMix;
		[SerializeField]
		protected bool _overrideBypassProperties;
		[SerializeField]
		protected bool _bypassEffects;
		[SerializeField]
		protected bool _bypassListenerEffects;
		[SerializeField]
		protected bool _bypassReverbZones;
		[SerializeField]
		public bool _overrideAudioMixerGroup;
		[SerializeField]
		public AudioMixerGroup _audioMixerGroup;
		[SerializeField]
		public NotifyParentType _notifyParentComponent;
		[SerializeField]
		public string _audioBusName;
		[SerializeField]
		public bool _overrideAudioBus;
		[SerializeField]
		public bool _overrideMusicTimeSettings;
		[SerializeField]
		public int _musicTimeSettingsIndex;
		[SerializeField]
		public float _musicTempo;
		[SerializeField]
		public int _musicTimeSignatureLower;
		[SerializeField]
		public int _musicTimeSignatureUpper;
		[SerializeField]
		public bool _musicTimeResetOnPlay;
		[SerializeField]
		public MIDIProperties _midiProperties;
		[SerializeField]
		protected bool _overrideSpatializeProperty;
		[SerializeField]
		public int _probability;
		[SerializeField]
		protected bool _multipleInstancesPerGameObject;
		[SerializeField]
		public bool _componentVirtualization;
		[SerializeField]
		public bool _overrideVolumeThreshold;
		[SerializeField]
		public float _volumeThreshold;
		[SerializeField]
		public VirtualizationBehavior _virtualizationBehavior;
		[SerializeField]
		public RTPManager _RTPManager;
		[SerializeField]
		public string Guid;
		[SerializeField]
		public Component _componentHolder;
		public string _onEventNotifyEventName;
	}
}
