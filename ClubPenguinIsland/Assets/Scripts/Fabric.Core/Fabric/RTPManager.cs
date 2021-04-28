using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class RTPManager
	{
		[SerializeField]
		public RTPParameterToProperty[] _parameters;
		[SerializeField]
		public Component _reference;
	}
}
