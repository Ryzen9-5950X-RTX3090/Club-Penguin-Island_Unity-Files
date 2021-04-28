using System;
using UnityEngine;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class DialogList : ScriptableObject
	{
		[Serializable]
		public struct Entry
		{
			public string ContentToken;
			public int Weight;
			public string AudioEventName;
			public bool AdvanceSequence;
			public string DialogAnimationTrigger;
			public string DialogAnimationEndTrigger;
		}

		public Entry[] Entries;
	}
}
