using UnityEngine;

public class TransitionRotateSelf : MonoBehaviour
{
	public Vector3 StartRotate;
	public Vector3 EndRotate;
	public AnimationCurve InterpCurveForward;
	public AnimationCurve InterpCurveBackward;
	public float Duration;
	public bool PlayOnStart;
	public float MaxDeltaTime;
}
