using UnityEngine;
using UnityEngine.UI;

namespace UnityEngine.UI.Extensions
{
	public class ScrollRectLinker : MonoBehaviour
	{
		public bool clamp;
		[SerializeField]
		private ScrollRect controllingScrollRect;
	}
}
