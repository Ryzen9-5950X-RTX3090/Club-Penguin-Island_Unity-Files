using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin
{
	[Serializable]
	public class PausedStateData : BaseData
	{
		public bool ShouldSkipResume;
	}
}
