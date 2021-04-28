using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.Chat
{
	[Serializable]
	public class EmoteDefinition : StaticGameDataDefinition
	{
		public enum ECategory
		{
			FACES = 0,
			MASCOTS = 1,
			FOOD = 2,
			ANIMALS = 3,
			THINGS = 4,
			MISC = 5,
		}

		public string Id;
		public int CharacterCode;
		public string Token;
		public string Sound;
		[SerializeField]
		private bool isMemberOnly;
		public ECategory Category;
	}
}
