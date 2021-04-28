using UnityEngine;

public class IslandTargetModifier : MonoBehaviour
{
	public enum ModifierType
	{
		None = 0,
		SpinY = 1,
		SpinX = 2,
		HSlide = 3,
		VSlide = 4,
	}

	public ModifierType _modifierType;
	public float _modifySpeed;
	public float _modifyDelay;
	public float _modifyDistance;
}
