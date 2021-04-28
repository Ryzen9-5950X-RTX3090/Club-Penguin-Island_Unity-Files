using ClubPenguin.Core;
using ClubPenguin.Tubes;
using ClubPenguin.Tags;

namespace ClubPenguin.Switches
{
	public class SelectedTubeSwitch : Switch
	{
		public TubeDefinition[] Tubes;
		public TagMatcher Tags;
	}
}
