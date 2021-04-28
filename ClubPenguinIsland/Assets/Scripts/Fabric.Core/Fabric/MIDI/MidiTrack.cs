using System;
using UnityEngine;
using Fabric;

namespace Fabric.MIDI
{
	[Serializable]
	public class MidiTrack
	{
		[SerializeField]
		public ulong TotalTime;
		[SerializeField]
		public byte[] Programs;
		[SerializeField]
		public byte[] DrumPrograms;
		[SerializeField]
		public MidiEvent[] MidiEvents;
		[SerializeField]
		public Component component;
		[SerializeField]
		public bool Mute;
	}
}
