using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class MemberLockedTrayInputButton : MonoBehaviour
	{
		public PrefabContentKey MemberLockContentKey;
		public Sprite IconSprite;
		[SerializeField]
		private bool isLocked;
	}
}
