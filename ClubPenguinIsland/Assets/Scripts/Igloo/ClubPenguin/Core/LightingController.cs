using UnityEngine;
using System;

namespace ClubPenguin.Core
{
	public class LightingController : MonoBehaviour
	{
		[Serializable]
		public class Trilight
		{
			public Color sky;
			public Color equator;
			public Color ground;
		}

	}
}
