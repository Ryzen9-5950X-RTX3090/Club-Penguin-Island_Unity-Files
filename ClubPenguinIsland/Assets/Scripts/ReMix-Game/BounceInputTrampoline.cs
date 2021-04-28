using UnityEngine;

public class BounceInputTrampoline : MonoBehaviour
{
	public float JumpMagnitudeIncrease;
	public ParticleSystem SuccessParticles;
	public ParticleSystem NewRecordParticles;
	public ParticleSystem FailParticles;
	public GameObject highJumpAltitudeMarker;
	public Transform contactTransform;
	public TextMesh NameText;
	public TextMesh RecordText;
	public TextMesh RecordMarkerText;
	public TextMesh RecordMarkerShadowText;
}
