using UnityEngine;
using System;
using System.Collections.Generic;

namespace Foundation.Unity
{
	public class FibreService : MonoBehaviour
	{
		[Serializable]
		public class Fibre
		{
			public Fibre(string name, float timeslice, FibreService.FibreFactory factory)
			{
			}

		}

		public delegate IEnumerator<bool> FibreFactory();

		public List<FibreService.Fibre> Fibres;
	}
}
