using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin
{
	[Serializable]
	public class PlayerCardData : BaseData
	{
		public bool Enabled;
		public bool IsPlayerCardShowing;
	}
}
