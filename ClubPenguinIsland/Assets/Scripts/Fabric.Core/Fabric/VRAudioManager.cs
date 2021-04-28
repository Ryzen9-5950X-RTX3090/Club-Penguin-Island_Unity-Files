using System;
using UnityEngine;
using System.Collections.Generic;

namespace Fabric
{
	[Serializable]
	public class VRAudioManager
	{
		[Serializable]
		public class VRSolution
		{
			[SerializeField]
			public GameObject _audioSourcePrefab;
			[SerializeField]
			public GameObject _audioListenerPrefab;
		}

		[SerializeField]
		public VRPlatformDictionary _vrPlatforms;
		[SerializeField]
		public List<VRAudioManager.VRSolution> _vrSolutions;
		[SerializeField]
		public int _defaultVRSolution;
	}
}
