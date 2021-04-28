using System;
using UnityEngine;

namespace Disney.Kelowna.Common
{
	[Serializable]
	public class TypedAssetContentKey<T> : AssetContentKey
	{
		[SerializeField]
		private string type;
	}
}
