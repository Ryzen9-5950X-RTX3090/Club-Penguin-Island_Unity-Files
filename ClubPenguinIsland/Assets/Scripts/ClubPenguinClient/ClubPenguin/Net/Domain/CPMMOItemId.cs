using System;

namespace ClubPenguin.Net.Domain
{
	[Serializable]
	public struct CPMMOItemId
	{
		public enum CPMMOItemParent
		{
			PLAYER = 0,
			WORLD = 1,
		}

		public CPMMOItemId(long id, CPMMOItemId.CPMMOItemParent parent) : this()
		{
		}

	}
}
