using UnityEngine;
using System.Collections.Generic;
using ClubPenguin.Actions;

public class SuperTrampoline : MonoBehaviour
{
	public List<ImpulseAction> impulseObjects;
	public float[] impulsePowerPerLevel;
	public GameObject[] LitSections;
	public GameObject arrowObj;
	public int[] arrowPositions;
	public iTween.EaseType arrowTween;
	public float arrowTweenTime;
	public float teamworkDelta;
	public GameObject increaseParticles;
	public GameObject[] increaseAnchors;
	public string levelToken;
	public TextMesh textTitle;
	public TextMesh textLevel;
	public string[] AudioIncreaseLevel;
	public string AudioPowerOverdrive;
	public float PauseBeforeOverdrive;
	public string AudioDecreaseLevel;
	public string AudioPowerDown;
	public GameObject soundAnchorObj;
}
