using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.FeatureToggle
{
	[Serializable]
	public class FeatureDefinition : StaticGameDataDefinition
	{
		public string Id;
		[TextAreaAttribute]
		public string Description;
	}
}
