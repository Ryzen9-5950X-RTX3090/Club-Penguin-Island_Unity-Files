using System;
using Disney.Kelowna.Common.DataModel;
using System.Collections.Generic;

namespace ClubPenguin
{
	[Serializable]
	public class AccountFlowData : ScopedData
	{
		public bool LoginViaMembership;
		public bool LoginViaRestore;
		public bool SkipMembership;
		public bool SkipWelcome;
		public List<string> PreValidatedDisplayNames;
		public List<string> PreValidatedUserNames;
		public AccountFlowType FlowType;
		public string Referrer;
	}
}
