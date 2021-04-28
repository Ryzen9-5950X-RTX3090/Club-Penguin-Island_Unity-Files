using System;
using Disney.Kelowna.Common.DataModel;
using ClubPenguin.Net.Domain;

namespace ClubPenguin
{
	[Serializable]
	public class SpawnData : BaseData
	{
		public Reward PendingReward;
	}
}
