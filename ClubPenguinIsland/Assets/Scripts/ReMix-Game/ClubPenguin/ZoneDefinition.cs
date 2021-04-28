using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;
using System.Collections.Generic;
using ClubPenguin.LOD;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	[Serializable]
	public class ZoneDefinition : StaticGameDataDefinition
	{
		public enum ZoneType
		{
			Interior = 0,
			Exterior = 1,
			Igloo = 2,
			Game = 3,
		}

		public string ZoneName;
		public string ZoneToken;
		public ZoneType Type;
		public int HardLimit;
		public float SoftLimit;
		public string SceneName;
		public string SceneFilePath;
		public Vector3 DefaultAOI;
		public MapLimits MapLimits;
		public bool IsQuestOnly;
		public List<LODSystemDataReference> LODSystemData;
		public SpriteContentKey IglooPreview;
		public bool DefaultIgloo;
		public bool AlwaysSpawnPlayerAtDefaultLocation;
	}
}
