using UnityEngine;

public class UITransitionSlideAndScaleSelf : MonoBehaviour
{
	public Vector3 DeltaPos;
	public Vector3 startScale;
	public Vector3 endScale;
	public AnimationCurve InterpCurveForward;
	public AnimationCurve InterpCurveBackward;
	public float Duration;
	public bool PlayOnStart;
	public float MaxDeltaTime;
}
