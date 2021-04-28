using UnityEngine;
using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin.Breadcrumbs;

namespace ClubPenguin.ClothingDesigner.ItemCustomizer
{
	public class CustomizationButton : MonoBehaviour
	{
		public DraggableButtonType DraggableButtonType;
		public int DefinitionId;
		[SerializeField]
		protected Image IconImage;
		[SerializeField]
		protected GameObject LoadingSpinner;
		[SerializeField]
		protected NotificationBreadcrumb breadcrumb;
	}
}
