using UnityEngine;

namespace Fabric
{
	public class IntroLoopOutroComponent : Component
	{
		[SerializeField]
		public Component[] _stages;
		[SerializeField]
		public float _transitionOffset;
		[SerializeField]
		public float _transitionOffsetRandomization;
		[SerializeField]
		public bool _playLoopToEnd;
	}
}
