using System;
using System.Collections.Generic;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class SampleFile
	{
		[SerializeField]
		private List<SampleFileInstance> _sampleFileInstanceList;
		[SerializeField]
		public string _name;
		[SerializeField]
		public string _audioClipPath;
		[SerializeField]
		public List<Marker> _markers;
		[SerializeField]
		public float _sampleRate;
		[SerializeField]
		public int _channels;
		[SerializeField]
		public int _samples;
		[SerializeField]
		public bool _threeD;
		public float[] _data;
	}
}
