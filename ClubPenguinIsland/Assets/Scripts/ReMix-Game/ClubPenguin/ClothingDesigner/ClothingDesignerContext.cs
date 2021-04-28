using UnityEngine;

namespace ClubPenguin.ClothingDesigner
{
	public class ClothingDesignerContext : MonoBehaviour
	{
		[SerializeField]
		private GameObject customizerAvatarPreview;
		[SerializeField]
		private GameObject screenContent;
		[SerializeField]
		private GameObject catalogContainer;
		[SerializeField]
		private RectTransform screenContainer;
		[SerializeField]
		private GameObject loadingIndicator;
		[SerializeField]
		private Texture2D[] defaultChannelTextures;
	}
}
