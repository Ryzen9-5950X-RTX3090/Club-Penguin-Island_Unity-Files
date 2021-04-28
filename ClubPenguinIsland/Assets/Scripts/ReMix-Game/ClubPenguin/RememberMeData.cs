using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin
{
	[Serializable]
	public class RememberMeData : ScopedData
	{
		public RememberMeAccountData AccountData;
		public string GeneralErrorMessage;
	}
}
