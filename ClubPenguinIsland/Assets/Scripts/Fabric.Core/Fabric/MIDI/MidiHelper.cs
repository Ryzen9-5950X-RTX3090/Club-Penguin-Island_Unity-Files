namespace Fabric.MIDI
{
	public class MidiHelper
	{
		public enum MidiMetaEvent
		{
			None = 0,
			Sequence_Number = 1,
			Text_Event = 2,
			Copyright_Notice = 3,
			Sequence_Or_Track_Name = 4,
			Instrument_Name = 5,
			Lyric_Text = 6,
			Marker_Text = 7,
			Cue_Point = 8,
			Midi_Channel_Prefix_Assignment = 9,
			End_of_Track = 10,
			Tempo = 11,
			Smpte_Offset = 12,
			Time_Signature = 13,
			Key_Signature = 14,
			Sequencer_Specific_Event = 15,
			Unknown = 16,
		}

		public enum MidiChannelEvent
		{
			None = 0,
			Note_On = 1,
			Note_Off = 2,
			Note_Aftertouch = 3,
			Controller = 4,
			Program_Change = 5,
			Channel_Aftertouch = 6,
			Pitch_Bend = 7,
			Unknown = 8,
		}

	}
}
