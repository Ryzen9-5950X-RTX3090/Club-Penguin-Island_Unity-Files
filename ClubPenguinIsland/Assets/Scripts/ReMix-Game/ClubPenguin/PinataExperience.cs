using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin
{
	public class PinataExperience : MonoBehaviour
	{
		[SerializeField]
		private List<GameObject> PinataDamageObjects;
		[SerializeField]
		private GameObject PinataDestroyEffectPrefab;
		[SerializeField]
		private GameObject PinataHitEffectPrefab;
		[SerializeField]
		private GameObject CoinsEffectPrefab;
		[SerializeField]
		private GameObject CoinRewardPrefab;
	}
}
