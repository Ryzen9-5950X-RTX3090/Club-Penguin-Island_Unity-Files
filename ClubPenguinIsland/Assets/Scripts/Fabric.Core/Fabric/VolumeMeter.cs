using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class VolumeMeter : MonoBehaviour
	{
		public VolumeMeterState volumeMeterState;
		[SerializeField]
		public bool _is3D;
		[SerializeField]
		public string _globalParameterName;
	}
}
