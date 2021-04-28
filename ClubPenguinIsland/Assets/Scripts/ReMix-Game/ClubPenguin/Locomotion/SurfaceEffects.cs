using UnityEngine;
using System;

namespace ClubPenguin.Locomotion
{
	public class SurfaceEffects : MonoBehaviour
	{
		[Serializable]
		public struct Effector
		{
			public string Alias;
			public Transform EmitterPoint;
		}

		public Effector[] Effectors;
		public SurfaceEffectsData MasterData;
	}
}
