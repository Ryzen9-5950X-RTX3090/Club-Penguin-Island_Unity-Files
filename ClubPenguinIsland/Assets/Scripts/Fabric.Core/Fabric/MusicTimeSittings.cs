using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class MusicTimeSittings
	{
		[SerializeField]
		public string _name;
		[SerializeField]
		public float _bpm;
		[SerializeField]
		public int _timeSignatureLower;
		[SerializeField]
		public int _timeSignatureUpper;
		[SerializeField]
		public MusicSyncType _syncType;
		[SerializeField]
		public Component _syncTarget;
	}
}
