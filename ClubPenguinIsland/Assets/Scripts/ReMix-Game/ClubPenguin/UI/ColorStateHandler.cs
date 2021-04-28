using UnityEngine;
using System;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class ColorStateHandler : MonoBehaviour
	{
		[Serializable]
		public struct StateBinding
		{
			public string State;
			public Color Value;
		}

		public Graphic Target;
		public StateBinding[] Bindings;
	}
}
