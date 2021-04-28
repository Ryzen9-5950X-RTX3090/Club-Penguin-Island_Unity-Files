using UnityEngine;
using UnityEngine.UI;

public class UITransitionGrayOut : MonoBehaviour
{
	public Image target;
	public float startAlpha;
	public float endAlpha;
	public float duration;
	public bool PlayOnStart;
	public AnimationCurve InterpCurveForward;
	public AnimationCurve InterpCurveBackward;
	public float MaxDeltaTime;
}
