using UnityEngine;
using System;

public class BeachBallTarget : MonoBehaviour
{
	[Serializable]
	public class TargetDefinition
	{
		public BeachBallTargetController.TargetType type;
		public BeachBallTargetController.TargetFace face;
		public int pointValue;
		public int blockerLevel;
	}

	public GameObject[] targetFaces;
	public ScorePopUp scorePopUp;
	public ParticleSystem shockwaveEffect;
	public ParticleSystem hitEffect;
	public float ExplosiveForce;
	public float ExplsionRadius;
	public TargetDefinition definition;
}
