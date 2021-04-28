using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;
using UnityEngine;

namespace ClubPenguin
{
	public class TemporaryHeadStatusDefinition : StaticGameDataDefinition
	{
		public string Id;
		public TemporaryHeadStatusType Type;
		[SerializeField]
		public PrefabContentKey EffectsContentKey;
	}
}
