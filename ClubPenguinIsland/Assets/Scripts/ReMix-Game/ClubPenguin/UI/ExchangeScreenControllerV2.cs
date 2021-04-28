using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Tutorial;

namespace ClubPenguin.UI
{
	public class ExchangeScreenControllerV2 : MonoBehaviour
	{
		public ExchangeScreenNumberRoll NumberRoll;
		public ExchangeScreenInventory Inventory;
		public Button ExchangeButton;
		public GameObject ProgressBar;
		public GameObject[] Tubes;
		public ParticleSystem[] CoinParticles;
		public ParticleSystem[] TubeParticles;
		public ParticleSystem ButtonParticles;
		public ParticleSystem CoinBurstParticles;
		public Animator CounterAnimator;
		public float CoinAnimTimeRatio;
		public float MinAnimTime;
		public float MaxAnimTime;
		public float TubeAnimDelay;
		public float InventoryAnimDelay;
		public float ReelAnimDelay;
		public float EndExchangeAnimDelay;
		public TutorialDefinitionKey Collect1TutorialDefinition;
		public TutorialDefinitionKey Collect2TutorialDefinition;
		public TutorialDefinitionKey ExchangeTutorialDefinition;
	}
}
