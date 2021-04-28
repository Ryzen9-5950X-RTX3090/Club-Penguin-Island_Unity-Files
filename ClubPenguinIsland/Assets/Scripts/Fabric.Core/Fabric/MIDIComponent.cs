using Fabric.MIDI;
using UnityEngine;

namespace Fabric
{
	public class MIDIComponent : Component
	{
		[SerializeField]
		public MidiSequencer midiSequencer;
		[SerializeField]
		public string midiFilePath;
		[SerializeField]
		public bool _loop;
		[SerializeField]
		public bool _ignoreNoteOff;
		[SerializeField]
		public bool _controlTargetComponents;
	}
}
