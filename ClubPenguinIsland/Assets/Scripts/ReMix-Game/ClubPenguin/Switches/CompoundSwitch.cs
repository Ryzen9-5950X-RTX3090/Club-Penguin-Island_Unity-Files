using ClubPenguin.Core;

namespace ClubPenguin.Switches
{
	public class CompoundSwitch : Switch
	{
		public enum Operators
		{
			OR = 0,
			AND = 1,
		}

		public Operators Operator;
	}
}
