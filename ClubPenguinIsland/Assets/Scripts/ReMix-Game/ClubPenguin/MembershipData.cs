using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class MembershipData : BaseData
	{
		[SerializeField]
		private bool isMember;
		[SerializeField]
		private MembershipType membershipType;
	}
}
