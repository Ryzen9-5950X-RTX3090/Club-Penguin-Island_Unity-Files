using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class DailySpinEntityData : ScopedData
	{
		[SerializeField]
		public long TimeOfLastSpinInMilliseconds;
		[SerializeField]
		public int CurrentChestId;
		[SerializeField]
		public int NumPunchesOnCurrentChest;
		[SerializeField]
		public int NumChestsReceivedOfCurrentChestId;
	}
}
