using UnityEngine;
using System;

namespace ClubPenguin.Audio
{
	internal class AudioEffects : MonoBehaviour
	{
		[Serializable]
		public struct OnCollisionEntry
		{
			public string EventName;
			public float MinRelativeVelocity;
			public float MaxRelativeVelocity;
		}

		public OnCollisionEntry[] OnCollision;
	}
}
