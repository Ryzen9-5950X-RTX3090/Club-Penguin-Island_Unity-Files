using System;
using UnityEngine;

namespace Disney.Kelowna.Common.DataModel
{
	[Serializable]
	public class BaseDataMonoBehaviour<T> : MonoBehaviour
	{
		public T Data;
	}
}
