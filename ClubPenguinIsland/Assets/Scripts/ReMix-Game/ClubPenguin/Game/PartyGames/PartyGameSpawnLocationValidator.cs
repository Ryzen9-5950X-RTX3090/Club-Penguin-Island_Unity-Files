using ClubPenguin.Props;
using UnityEngine;

namespace ClubPenguin.Game.PartyGames
{
	public class PartyGameSpawnLocationValidator : PropSpawnLocationValidator
	{
		public Transform[] PlayerPositions;
		public float MaxVerticalDistance;
		public bool IsValidSwimming;
		public bool IsValidDiving;
	}
}
