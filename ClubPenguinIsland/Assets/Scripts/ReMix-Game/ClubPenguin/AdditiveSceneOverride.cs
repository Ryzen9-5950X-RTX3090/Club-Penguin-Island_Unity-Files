using System;
using ClubPenguin.Core;

namespace ClubPenguin
{
	[Serializable]
	public struct AdditiveSceneOverride
	{
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public string PlayerPrefsKey;
		public string[] AdditiveScenes;
	}
}
