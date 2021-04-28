using UnityEngine;

namespace Fabric
{
	public class ReverbFilter : DSPComponent
	{
		public AudioReverbPreset _reverbPreset;
		[SerializeField]
		public DSPParameter _dryLevel;
		[SerializeField]
		public DSPParameter _room;
		[SerializeField]
		public DSPParameter _roomHF;
		[SerializeField]
		public DSPParameter _roomRolloff;
		[SerializeField]
		public DSPParameter _decayTime;
		[SerializeField]
		public DSPParameter _decayHFRatio;
		[SerializeField]
		public DSPParameter _reflectionsLevel;
		[SerializeField]
		public DSPParameter _reflectionsDelay;
		[SerializeField]
		public DSPParameter _reverbLevel;
		[SerializeField]
		public DSPParameter _reverbDelay;
		[SerializeField]
		public DSPParameter _diffusion;
		[SerializeField]
		public DSPParameter _density;
		[SerializeField]
		public DSPParameter _hfReference;
		[SerializeField]
		public DSPParameter _roomLF;
		[SerializeField]
		public DSPParameter _lFReference;
	}
}
