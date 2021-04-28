using UnityEngine.EventSystems;
using System.Collections.Generic;
using UnityEngine;

public class QuickCaster : BaseRaycaster
{
	public override void Raycast(PointerEventData eventData, List<RaycastResult> resultAppendList)
	{
	}

	public override Camera eventCamera
	{
		get { return default(Camera); }
	}

	public bool supportCanvasGroupsAndDragging;
}
