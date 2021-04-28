using UnityEngine;

namespace Fabric
{
	public class GroupPreset : MonoBehaviour
	{
		[SerializeField]
		public GroupComponent _groupComponent;
		[SerializeField]
		private float _volume;
		[SerializeField]
		private float _pitch;
		[SerializeField]
		private float _fadeInTime;
		[SerializeField]
		private float _fadeInCurve;
		[SerializeField]
		private float _fadeOutTime;
		[SerializeField]
		private float _fadeOutCurve;
	}
}
