using UnityEngine;

public class PenguinSnowballThrowData : ScriptableObject
{
	public string SnowballPoolName;
	public int AnimLayerIndex;
	public Transform ThrowDirection;
	public float MinThrowSpeed;
	public float MaxThrowSpeed;
	public float MinLiftForce;
	public float MaxLiftForce;
	public float MaxChargeTime;
	public float MinTrailAlpha;
	public float MaxTrailAlpha;
	public float CharVelocityFactor;
	public string ChargeAnimTrigger;
	public string LaunchAnimTrigger;
	public bool EnableAimAssist;
	public LayerMask AimAssistCollisionLayers;
	public Vector3 AimAssistRaycastError;
	public float AimAssistRange;
}
