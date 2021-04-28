using System;

namespace ClubPenguin.UI
{
	[Serializable]
	public class LayoutSwitcherSettings<TSettings>
	{
		public string DefaultType;
		public string[] Types;
		public TSettings[] Settings;
	}
}
