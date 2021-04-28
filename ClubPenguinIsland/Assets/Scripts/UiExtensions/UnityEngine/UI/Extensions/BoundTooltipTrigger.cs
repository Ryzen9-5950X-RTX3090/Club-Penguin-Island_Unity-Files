using UnityEngine;

namespace UnityEngine.UI.Extensions
{
	public class BoundTooltipTrigger : MonoBehaviour
	{
		[TextAreaAttribute]
		public string text;
		public bool useMousePosition;
		public Vector3 offset;
	}
}
