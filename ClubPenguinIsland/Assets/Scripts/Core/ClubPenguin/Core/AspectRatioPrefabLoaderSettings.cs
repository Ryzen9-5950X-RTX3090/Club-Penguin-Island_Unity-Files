using System;
using Disney.Kelowna.Common;

namespace ClubPenguin.Core
{
	[Serializable]
	public class AspectRatioPrefabLoaderSettings : AbstractAspectRatioSpecificSettings
	{
		public PrefabContentKey[] ContentKeys;
	}
}
