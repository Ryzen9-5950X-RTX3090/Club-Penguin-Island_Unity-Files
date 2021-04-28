using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class RTPModulator : MonoBehaviour
	{
		[SerializeField]
		public ModulatorType type;
		[SerializeField]
		public float frequency;
		[SerializeField]
		public float phase;
		[SerializeField]
		private float amplitude;
		public float offset;
		[SerializeField]
		public float invert;
	}
}
