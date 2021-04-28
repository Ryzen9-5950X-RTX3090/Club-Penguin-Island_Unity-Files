using UnityEngine;

namespace ClubPenguin.SpecialEvents
{
	public class ScheduledGeyserController : ScheduledCore
	{
		public ScheduledFog FogController;
		public int StartOnMinute;
		public int AttractSeconds;
		public int AttractLowSeconds;
		public int AttractMedSeconds;
		public int AttractHighSeconds;
		public int BoostSeconds;
		public float GeyserDiameter;
		public float GeyserHeight;
		public GameObject[] CollectibleObjects;
		public GameObject SparklePrefab;
		public GameObject AttractPrefab;
		public GameObject GeyserPrefab;
		public GameObject SpringPrefab;
		public string AudioEventStart;
		public string AudioAttractStart;
		public string AudioGeyserStart;
		public string AudioEventEnd;
	}
}
