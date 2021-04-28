using UnityEngine;
using ClubPenguin.Core;

namespace ClubPenguin.SpecialEvents
{
	public class ScheduledCostume : MonoBehaviour
	{
		public string EventName;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public ScheduledSpawnData[] SpawnData;
		public ScheduledSwapMaterialData[] SwapMaterialData;
	}
}
