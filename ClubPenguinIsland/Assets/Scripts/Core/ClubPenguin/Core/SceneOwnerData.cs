using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin.Core
{
	[Serializable]
	public class SceneOwnerData : ScopedData
	{
		public string Name;
		public bool IsOwner;
	}
}
