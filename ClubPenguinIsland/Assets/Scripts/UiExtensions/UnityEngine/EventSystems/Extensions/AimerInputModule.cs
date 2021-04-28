using UnityEngine.EventSystems;
using UnityEngine;

namespace UnityEngine.EventSystems.Extensions
{
	public class AimerInputModule : PointerInputModule
	{
		public override void Process()
		{
		}

		public string activateAxis;
		public Vector2 aimerOffset;
	}
}
