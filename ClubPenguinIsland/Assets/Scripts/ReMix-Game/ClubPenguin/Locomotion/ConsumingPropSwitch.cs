using ClubPenguin.Core;
using ClubPenguin.Props;

namespace ClubPenguin.Locomotion
{
	public class ConsumingPropSwitch : Switch
	{
		public bool PersistWhenSitting;
		public float PersistForTime;
		public PropDefinition.PropTypes PropType;
		public Prop.VisualTreatmentType VisualTreatmentType;
	}
}
