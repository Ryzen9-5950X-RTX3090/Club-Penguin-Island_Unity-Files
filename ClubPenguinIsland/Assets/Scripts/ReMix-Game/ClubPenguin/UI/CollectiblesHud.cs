using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Tutorial;

namespace ClubPenguin.UI
{
	public class CollectiblesHud : MonoBehaviour
	{
		public Image CollectibleImage;
		public Image TextImage;
		public Text CountText;
		public ParticleSystem CollectibleParticles;
		public float CloseTime;
		public TutorialDefinitionKey CollectiblesTutorial;
	}
}
