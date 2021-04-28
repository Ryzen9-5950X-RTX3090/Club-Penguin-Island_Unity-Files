using UnityEngine;
using System.Collections.Generic;
using ClubPenguin.ClothingDesigner;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class ClothingDesignerCameraController : MonoBehaviour
	{
		[SerializeField]
		private List<ClothingDesignerCameraData> cameraViewData;
		[SerializeField]
		private float cameraZoomAdjustment;
		[SerializeField]
		private float cameraSaveZoomFOV;
	}
}
