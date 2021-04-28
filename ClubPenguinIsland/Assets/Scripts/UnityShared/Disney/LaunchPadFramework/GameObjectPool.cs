using UnityEngine;
using Disney.LaunchPadFramework.PoolStrategies;

namespace Disney.LaunchPadFramework
{
	public class GameObjectPool : MonoBehaviour
	{
		[SerializeField]
		public GameObject m_prefabToInstace;
		[SerializeField]
		protected int m_capacity;
		[SerializeField]
		private ObjectPoolFullStrategy m_fullStrategy;
		[SerializeField]
		private bool m_sendNotifyMessages;
	}
}
