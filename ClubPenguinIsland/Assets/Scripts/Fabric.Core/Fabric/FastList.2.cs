using System;
using System.Collections.Generic;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class FastList<Key, Data>
	{
		[SerializeField]
		public List<Key> _keys;
		[SerializeField]
		public List<Data> _data;
	}
}
