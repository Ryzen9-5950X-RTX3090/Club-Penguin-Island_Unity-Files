using System;
using System.Collections.Generic;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class SerializableDictionary<TKey, TValue> : Dictionary<TKey, TValue>
	{
		[SerializeField]
		private List<TKey> keys;
		[SerializeField]
		private List<TValue> values;
	}
}
