using UnityEngine;

public class MovementAnimationCurveSimple : MonoBehaviour
{
	public AnimationCurve animCurveX;
	public float magnitudeX;
	public bool animReverseX;
	public AnimationCurve animCurveY;
	public float magnitudeY;
	public bool animReverseY;
	public float animSecondsPerCycle;
	public bool UseLocalSpace;
	public float startPosition;
	public GameObject RelativeToObject;
	public bool IsActive;
}
