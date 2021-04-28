using System;

namespace ClubPenguin.Net.Client.Event
{
	[Serializable]
	public struct PlayerLocoStyle
	{
		public enum Style : byte
		{
			Walk = 1,
			Run = 2,
		}

		public long sessionId;
		public Style style;
	}
}
