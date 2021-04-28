using UnityEngine;
using ClubPenguin.Props;

namespace ClubPenguin
{
	public class DestructableItem : ProximityBroadcaster
	{
		public MeshRenderer MeshRenderer;
		public Animator Animator;
		public int HitPoints;
		public bool LocalPlayerCollision;
		public bool RemotePlayerCollision;
		public bool AnySwordCollision;
		public PropDefinition[] PropCollision;
		public float PropTriggerDistance;
		public float PropEndPercentage;
		public iTween.EaseType DamageEaseType;
		public float DamageTweenTime;
		public Vector3 DamageDimensions;
		public bool RestoreOnTriggerExit;
		public float RestoreAfterSeconds;
		public string AnimAnticipationStart;
		public string AnimAnticipationStop;
		public bool UseAnimTriggers;
		public bool UseMeshFrames;
		public string MeshSearchRoot;
		public DestructableData[] ThresholdData;
		public ParticleSystem AppearParticles;
		public ParticleSystem DamagedParticles;
		public ParticleSystem DestroyedParticles;
		public Vector3 ParticleSpawnOffset;
		public string AudioReappear;
		public string AudioDamage;
		public string AudioDestroyed;
	}
}
