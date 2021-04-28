using UnityEngine;
using ClubPenguin.Props;

namespace ClubPenguin.Interactables
{
	public class InteractionZoneDanceFloorObserver : InteractionZoneObserver
	{
		[SerializeField]
		private GameObject DanceZonePickupPrefab;
		public PropDefinition[] PropTypesObserved;
	}
}
