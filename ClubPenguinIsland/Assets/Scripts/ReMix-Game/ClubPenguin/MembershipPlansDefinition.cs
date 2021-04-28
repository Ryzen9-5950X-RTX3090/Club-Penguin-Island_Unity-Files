using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin
{
	[Serializable]
	public class MembershipPlansDefinition : StaticGameDataDefinition
	{
		[Serializable]
		public struct MembershipPlanGroup
		{
			public bool overrideDefaultSKU;
			public string defaultSKU;
			public bool overrideAllSKUs;
			public string[] AllSKUs;
			public bool overrideOfferSKUs;
			public string[] OfferSKUs;
		}

		public string Id;
		public string[] Countries;
		public MembershipPlanGroup FirstTime;
		public MembershipPlanGroup Resubscribe;
	}
}
