using UnityEngine;

namespace UnityTest
{
	public class CallTesting : MonoBehaviour
	{
		public enum Functions
		{
			CallAfterSeconds = 0,
			CallAfterFrames = 1,
			Start = 2,
			Update = 3,
			FixedUpdate = 4,
			LateUpdate = 5,
			OnDestroy = 6,
			OnEnable = 7,
			OnDisable = 8,
			OnControllerColliderHit = 9,
			OnParticleCollision = 10,
			OnJointBreak = 11,
			OnBecameInvisible = 12,
			OnBecameVisible = 13,
			OnTriggerEnter = 14,
			OnTriggerExit = 15,
			OnTriggerStay = 16,
			OnCollisionEnter = 17,
			OnCollisionExit = 18,
			OnCollisionStay = 19,
			OnTriggerEnter2D = 20,
			OnTriggerExit2D = 21,
			OnTriggerStay2D = 22,
			OnCollisionEnter2D = 23,
			OnCollisionExit2D = 24,
			OnCollisionStay2D = 25,
		}

		public enum Method
		{
			Pass = 0,
			Fail = 1,
		}

		public int afterFrames;
		public float afterSeconds;
		public Functions callOnMethod;
		public Method methodToCall;
	}
}
