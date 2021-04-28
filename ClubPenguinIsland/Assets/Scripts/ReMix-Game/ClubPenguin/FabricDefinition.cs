using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class FabricDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string AssetName;
		public TagDefinition[] Tags;
		public bool allowRotationAndScale;
		[SerializeField]
		private bool isMemberOnly;
	}
}
