using System;
using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.SpecialEvents
{
	[Serializable]
	public class ScheduledSwapMaterialData
	{
		public GameObject SwapTarget;
		public MaterialContentKey SwapMaterialKey;
		public bool DestroyTexture;
	}
}
