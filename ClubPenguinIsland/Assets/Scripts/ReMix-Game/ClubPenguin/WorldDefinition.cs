using System;
using ClubPenguin.Core.StaticGameData;
using DevonLocalization.Core;
using System.Collections.Generic;

namespace ClubPenguin
{
	[Serializable]
	public class WorldDefinition : StaticGameDataDefinition
	{
		public string WorldName;
		public Language Language;
		public List<string> TimeZones;
		public List<string> Countries;
		public List<string> Regions;
		public List<string> Cities;
		public bool Igloo;
	}
}
