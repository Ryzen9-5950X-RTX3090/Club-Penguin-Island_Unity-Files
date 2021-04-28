using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.Core
{
	[Serializable]
	public class MusicGenreDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string DisplayName;
		public Color GenreColor;
	}
}
