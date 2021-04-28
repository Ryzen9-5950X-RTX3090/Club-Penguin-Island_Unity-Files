using UnityEngine;

namespace PuffleRoundup
{
	public class mg_pr_RoundController : MonoBehaviour
	{
		public float m_gameTime;
		public float m_bonusTime;
		public int m_round;
		public int m_pufflesCaught;
		public float m_coinsRound;
		public float m_coinsTotal;
		public bool m_complete;
		public bool m_failed;
		public mg_PuffleRoundup Minigame;
	}
}
