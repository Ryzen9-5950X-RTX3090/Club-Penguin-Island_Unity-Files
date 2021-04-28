using System;
using System.Collections.Generic;
using UnityEngine;

namespace hg.ApiWebKit.core.http
{
	[Serializable]
	public class HttpOperation
	{
		public bool IsFaulted;
		[SerializeField]
		public List<string> FaultReasons;
	}
}
