using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.Igloo
{
	internal class IglooLayoutReloader : MonoBehaviour
	{
		public string UpdateNotice;
		public string UpdateCountDown;
		public string CloseNotice;
		public string CloseCountDown;
		public float CountDownSeconds;
		public PrefabContentKey NotificationPrefab;
		public string ForceLeaveTargetZone;
	}
}
