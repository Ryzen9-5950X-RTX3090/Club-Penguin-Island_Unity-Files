using UnityEngine;
using DisneyMobile.CoreUnitySystems.PoolStrategies;

namespace DisneyMobile.CoreUnitySystems
{
	public class GameObjectPool : MonoBehaviour
	{
		[SerializeField]
		public GameObject m_prefabToInstace;
		[SerializeField]
		protected int m_capacity;
		[SerializeField]
		private ObjectPoolFullStrategy m_fullStrategy;
	}
}
