using UnityEngine;

namespace ClubPenguin.UI
{
	public class QuestHud : MonoBehaviour
	{
		public QuestCommunicatorHud QuestCommunicatorHud;
		public QuestMessageHud QuestMessageHud;
		public GameObject QuestPointerPanel;
		public GameObject CommunicatorPanel;
		public ParticleSystem QuestHUDParticleSystem;
		public int ParticlesToEmit;
	}
}
