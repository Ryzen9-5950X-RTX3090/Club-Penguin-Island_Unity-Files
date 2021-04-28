using UnityEngine;
using System;
using UnityEngine.UI;

namespace ClubPenguin.UI
{
	public class SpriteStateHandler : MonoBehaviour
	{
		[Serializable]
		public struct StateBinding
		{
			public string State;
			public Sprite Value;
		}

		public Image Target;
		public StateBinding[] Bindings;
	}
}
