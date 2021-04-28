using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin.LOD
{
	[Serializable]
	public class LODRequestReference : ScopedData
	{
		public LODRequest Request;
	}
}
