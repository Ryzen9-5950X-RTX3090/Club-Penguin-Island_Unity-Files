using System;
using Disney.Kelowna.Common.DataModel;
using ClubPenguin.Net.Domain;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class IglooListingData : BaseData
	{
		[SerializeField]
		private RoomPopulationScale roomPopulationScale;
	}
}
