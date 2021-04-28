using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class DecalDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string AssetName;
		public TagDefinition[] Tags;
		[SerializeField]
		private bool isMemberOnly;
	}
}
