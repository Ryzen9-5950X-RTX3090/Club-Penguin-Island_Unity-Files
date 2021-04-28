using UnityEngine;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class CoinsDisplay : MonoBehaviour
	{
		public ParticleSystem CoinParticles;
		[SerializeField]
		private Text coinCountText;
		[SerializeField]
		private float TOTAL_ANIM_TIME;
		[SerializeField]
		private float TIME_PER_TICK;
		[SerializeField]
		private int PARTICLES_PER_TICK;
	}
}
