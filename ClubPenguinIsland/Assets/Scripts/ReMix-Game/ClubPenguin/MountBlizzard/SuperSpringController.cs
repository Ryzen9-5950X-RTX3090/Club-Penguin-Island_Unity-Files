using UnityEngine;
using ClubPenguin.Props;

namespace ClubPenguin.MountBlizzard
{
	public class SuperSpringController : MonoBehaviour
	{
		public PropDefinition[] PropDefinition;
		public ParticleSystem ParticlesSnow;
		public GameObject[] SpringObjects;
		public TextMesh TextCounter;
		public int JumpsRequired;
		public Vector3 shakeMagnitude;
		public float shakeTime;
		public float shakeDelay;
	}
}
