using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class SaveScreenController : MonoBehaviour
	{
		[SerializeField]
		private Image TemplateImage;
		[SerializeField]
		private Text TemplateCostText;
		[SerializeField]
		private GameObject disabledCoverHandle;
		[SerializeField]
		private float MinSaveTime;
		public StaticBreadcrumbDefinitionKey Breadcrumb;
	}
}
