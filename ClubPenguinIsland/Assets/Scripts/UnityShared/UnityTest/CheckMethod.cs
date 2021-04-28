namespace UnityTest
{
	public enum CheckMethod
	{
		AfterPeriodOfTime = 1,
		Start = 2,
		Update = 4,
		FixedUpdate = 8,
		LateUpdate = 16,
		OnDestroy = 32,
		OnEnable = 64,
		OnDisable = 128,
		OnControllerColliderHit = 256,
		OnParticleCollision = 512,
		OnJointBreak = 1024,
		OnBecameInvisible = 2048,
		OnBecameVisible = 4096,
		OnTriggerEnter = 8192,
		OnTriggerExit = 16384,
		OnTriggerStay = 32768,
		OnCollisionEnter = 65536,
		OnCollisionExit = 131072,
		OnCollisionStay = 262144,
		OnTriggerEnter2D = 524288,
		OnTriggerExit2D = 1048576,
		OnTriggerStay2D = 2097152,
		OnCollisionEnter2D = 4194304,
		OnCollisionExit2D = 8388608,
		OnCollisionStay2D = 16777216,
	}
}
