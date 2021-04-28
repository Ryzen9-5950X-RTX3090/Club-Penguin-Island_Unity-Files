using System;
using UnityEngine.Audio;

namespace ClubPenguin.Interactables
{
	public class InteractionZoneInstrumentObserver : InteractionZoneObserver
	{
		[Serializable]
		public struct InteractionZoneInstrumentData
		{
			public InteractionZoneInstrumentData(string instrumentName, string[] mixFunctionNames) : this()
			{
			}

			public string InstrumentName;
			public string[] MixFunctionNames;
		}

		public AudioMixer MainMixer;
		public float MuteVolumedB;
		public float FullVolumedB;
		public InteractionZoneInstrumentData[] InstrumentData;
	}
}
