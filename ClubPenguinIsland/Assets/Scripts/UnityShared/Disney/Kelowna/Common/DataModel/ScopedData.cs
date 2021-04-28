using System;
using UnityEngine;

namespace Disney.Kelowna.Common.DataModel
{
	[Serializable]
	public class ScopedData : BaseData
	{
		[SerializeField]
		private string _scopeID;
	}
}
