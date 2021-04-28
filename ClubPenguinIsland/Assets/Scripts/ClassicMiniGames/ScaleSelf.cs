using UnityEngine;

public class ScaleSelf : MonoBehaviour
{
	public Vector3 startScale;
	public Vector3 endScale;
	public AnimationCurve InterpCurveForward;
	public AnimationCurve InterpCurveBackward;
	public float Duration;
	public bool PlayOnStart;
	public float MaxDeltaTime;
	public float Delay;
	public string sfxName;
	public ParticleSystem particleEffect;
	public float particleWillPlayAtTime;
	public float particleTimer;
}
