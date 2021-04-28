using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric.MIDI
{
	[Serializable]
	public class MidiSequencer
	{
		[SerializeField]
		public MidiHeader midiHeader;
		[SerializeField]
		public List<MidiTrack> tracks;
		[SerializeField]
		public uint BPM;
		[SerializeField]
		public uint MPQN;
		[SerializeField]
		public MidiSequencerEvents seqEvt;
	}
}
