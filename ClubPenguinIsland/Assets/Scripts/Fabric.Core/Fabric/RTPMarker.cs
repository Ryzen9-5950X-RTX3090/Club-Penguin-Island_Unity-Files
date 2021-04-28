using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class RTPMarker
	{
		public RTPMarker(string label, float value)
		{
		}

		[SerializeField]
		public float _value;
		[SerializeField]
		public string _label;
		[SerializeField]
		public bool _keyOffEnabled;
	}
}
