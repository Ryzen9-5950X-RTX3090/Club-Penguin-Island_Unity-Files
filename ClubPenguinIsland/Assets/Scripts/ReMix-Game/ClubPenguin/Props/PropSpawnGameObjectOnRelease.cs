using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.Props
{
	public class PropSpawnGameObjectOnRelease : MonoBehaviour
	{
		[SerializeField]
		private PrefabContentKey GameObjectContentKey;
		[SerializeField]
		private bool ParentToUser;
	}
}
