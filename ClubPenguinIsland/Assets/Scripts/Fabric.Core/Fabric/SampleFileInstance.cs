using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class SampleFileInstance
	{
		public SampleFileInstance(SampleFile sampleFile)
		{
		}

		[SerializeField]
		public int _position;
		public int _start;
		public int _end;
		public bool _loop;
	}
}
