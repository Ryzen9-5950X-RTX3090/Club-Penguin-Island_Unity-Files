using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class RTPProperty
	{
		[SerializeField]
		public int _property;
		[SerializeField]
		public string _name;
		[SerializeField]
		public float _min;
		[SerializeField]
		public float _max;
	}
}
