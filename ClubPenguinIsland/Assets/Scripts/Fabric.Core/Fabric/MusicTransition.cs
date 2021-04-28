using System;
using UnityEngine;

namespace Fabric
{
	[Serializable]
	public class MusicTransition
	{
		[Serializable]
		public class MusicTransitionHolder
		{
			[SerializeField]
			public Component _component;
			[SerializeField]
			public MusicSyncType _musicSyncType;
		}

		[SerializeField]
		public MusicTransitionHolder _fromComponent;
		[SerializeField]
		public MusicTransitionHolder _transition;
		[SerializeField]
		public MusicTransitionHolder _toComponent;
	}
}
