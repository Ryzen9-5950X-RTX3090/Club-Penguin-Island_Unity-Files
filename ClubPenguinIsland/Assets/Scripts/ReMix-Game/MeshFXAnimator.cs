using UnityEngine;

public class MeshFXAnimator : MonoBehaviour
{
	public string MeshTag;
	public float TotalTime;
	public AnimationCurve curve;
	public bool PersistAfterLastFrame;
	public bool SelfDestruct;
	public float DestroyAfterSeconds;
	public bool ResetOnEnabled;
	public bool PlaySoundOnLoop;
	public string SoundEventToPlay;
	public int PlaySoundOnFrame;
	public GameObject OverrideSource;
}
