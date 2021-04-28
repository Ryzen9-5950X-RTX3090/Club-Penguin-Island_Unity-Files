using UnityEngine;
using ClubPenguin.MiniGames.Fishing;
using ClubPenguin.Tutorial;
using ClubPenguin;

namespace ClubPenguin.Adventure
{
	public class FishingController : MonoBehaviour
	{
		[SerializeField]
		private FishingGameConfig config;
		[SerializeField]
		private Transform prizeDropContainer;
		public TutorialDefinitionKey TutorialDefinition;
		public Transform rootTransform;
		public float dropSplashFactor;
		public float missSplashFactor;
		public Transform bobberRootTransform;
		public FishingFish fishPrefab;
		public SimpleSpringInterper reelSpring;
		public ParticleSystem fxSmallSplash;
		public ParticleSystem fxIdle;
		public ParticleSystem fxUnderBobber;
		public ParticleSystem fxHooked;
		public ParticleSystem fxReeling;
		public ParticleSystem fxReveal;
	}
}
