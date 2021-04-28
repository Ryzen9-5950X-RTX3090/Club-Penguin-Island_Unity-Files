using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;
using Disney.Kelowna.Common;
using UnityEngine;

namespace ClubPenguin.Tubes
{
	[Serializable]
	public class TubeDefinition : StaticGameDataDefinition
	{
		public int Id;
		public TagDefinitionKey[] Tags;
		public SpriteContentKey IconContentKey;
		public SpriteContentKey ButtonIconKeyOff;
		public SpriteContentKey ButtonIconKeyDisabled;
		public SpriteContentKey ButtonIconKeyOn;
		public SpriteContentKey ButtonIconKeyInactive;
		public PrefabContentKey TubeAssetContentKey;
		[SerializeField]
		public string DisplayNameToken;
		[SerializeField]
		private bool isMemberOnly;
	}
}
