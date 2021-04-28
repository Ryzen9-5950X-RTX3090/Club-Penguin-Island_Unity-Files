using DisneyMobile.CoreUnitySystems;
using UnityEngine;

public class UITransitionSimpleSlide : UIElementBase
{
	public Vector3 StartPos;
	public Vector3 EndPos;
	public AnimationCurve InterpCurveForward;
	public AnimationCurve InterpCurveBackward;
	public float Duration;
	public bool PlayOnStart;
	public float MaxDeltaTime;
}
