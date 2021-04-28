using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class AbstractPlayerListController : MonoBehaviour
	{
		public PrefabContentKey PlayerItemContentKey;
		public string IdlePenguinState;
		public string SleepingPenguinState;
		public bool ShowPlayerOfflineState;
	}
}
