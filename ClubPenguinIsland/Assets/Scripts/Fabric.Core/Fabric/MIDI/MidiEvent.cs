using System;
using UnityEngine;

namespace Fabric.MIDI
{
	[Serializable]
	public class MidiEvent
	{
		[SerializeField]
		public uint deltaTime;
		[SerializeField]
		public byte parameter1;
		[SerializeField]
		public byte parameter2;
		[SerializeField]
		public byte channel;
		[SerializeField]
		public MidiHelper.MidiMetaEvent midiMetaEvent;
		[SerializeField]
		public MidiHelper.MidiChannelEvent midiChannelEvent;
	}
}
