using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	[Serializable]
	public class SceneDefinition : StaticGameDataDefinition
	{
		public string SceneName;
		public string[] AdditiveScenes;
		public int TargetFrameRate;
		public float FixedDeltaTime;
		public PrefabContentKey SceneAudioContentKey;
		public AdditiveSceneOverride[] AdditiveSceneOverrides;
	}
}
