using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;
using ClubPenguin.Net.Domain;

namespace ClubPenguin
{
	[Serializable]
	public class ProfileData : BaseData
	{
		[SerializeField]
		private bool isOnline;
		[SerializeField]
		private bool isFTUEComplete;
		[SerializeField]
		private ZoneId zoneId;
	}
}
