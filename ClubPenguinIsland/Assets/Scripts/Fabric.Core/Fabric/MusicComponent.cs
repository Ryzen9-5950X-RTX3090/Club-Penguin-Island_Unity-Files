using System.Collections.Generic;
using UnityEngine;

namespace Fabric
{
	public class MusicComponent : Component
	{
		[SerializeField]
		public List<MusicTransition> _transitions;
		[SerializeField]
		public Component _defaultComponent;
		[SerializeField]
		public bool _syncToMusicOnFirstPlay;
	}
}
