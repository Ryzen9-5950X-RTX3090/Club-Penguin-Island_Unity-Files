using UnityEngine;
using ClubPenguin.Core;
using Disney.Kelowna.Common;

namespace ClubPenguin.SpecialEvents
{
	public class ScheduledAdjustments : MonoBehaviour
	{
		public string EventName;
		public bool HideWhenQuestActive;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public ScheduledFogData FogData;
		public MaterialContentKey SkyboxMaterialKey;
		public ScheduledSwapMaterialData[] SwapMaterialData;
		public GameObject[] DestroyData;
		public ScheduledSpawnData[] SpawnData;
		public string AdditiveScene;
		public GameObject[] DisableData;
		public GameObject[] EnableData;
	}
}
