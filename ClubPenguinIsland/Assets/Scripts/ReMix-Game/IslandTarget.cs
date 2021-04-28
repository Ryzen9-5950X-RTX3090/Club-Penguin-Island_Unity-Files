using UnityEngine;
using UnityEngine.UI;

public class IslandTarget : MonoBehaviour
{
	public bool DamagedBySwords;
	public bool DamagedBySnowballs;
	public ParticleSystem DestroyedParticles;
	public Slider DamageSlider;
	public IslandTargetDamageHandler DamageHandler;
	public GameObject CheckMarkObject;
	public GameObject AimAssistObject;
	public GameObject HitBoxObject;
	public ParticleSystem HitEffectParticleSystem;
	public float SecondsDestroyWindow;
	public float MaxSecondsWaitAnimatedIntoView;
	public float MinSecondsWaitAnimatedIntoView;
	public float DelayTimeEnableColliders;
	public string TriggerStart;
	public string TriggerTimeout;
	public float TimeoutAnimTime;
	public string TriggertHit;
	public string TriggerDefeat;
	public float DefeatAnimTime;
	public string TriggerHeadFlashInit;
	public string TriggerHeadFlashStop;
	public int DamageCapacity;
	public int ServerDamageCount;
	public float DamagePercent;
}
