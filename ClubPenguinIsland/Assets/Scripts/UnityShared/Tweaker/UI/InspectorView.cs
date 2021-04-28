using UnityEngine;

namespace Tweaker.UI
{
	public class InspectorView : MonoBehaviour
	{
		public InspectorBackgroundView BackgroundPrefab;
		public InspectorHeaderView HeaderPrefab;
		public InspectorDescriptionView DescriptionPrefab;
		public InspectorFooterView FooterPrefab;
		public InspectorStringView StringEditPrefab;
		public InspectorStringView StringSmallEditPrefab;
		public InspectorBoolView BoolEditPrefab;
		public InspectorStepperView StepperPrefab;
		public InspectorToggleGroupView ToggleGroupPrefab;
		public InspectorToggleValueView ToggleValuePrefab;
		public InspectorSliderView SliderPrefab;
		public GameObject ContentContainer;
		public GameObject BodyContainer;
	}
}
