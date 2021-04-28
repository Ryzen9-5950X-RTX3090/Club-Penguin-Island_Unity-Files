using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.Holiday
{
	public class InteractiveDecorationSharedData : MonoBehaviour
	{
		public DecorationMPBData[] MasterBlocks;
		public DecorationGroupColorData[] ColorData;
		public DateUnityWrapper HideStartDate;
		public DateUnityWrapper HideEndDate;
	}
}
