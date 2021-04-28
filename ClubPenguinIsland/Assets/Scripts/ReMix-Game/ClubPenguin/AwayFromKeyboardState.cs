using System;
using ClubPenguin.Net.Client.Smartfox.SFSObject;

namespace ClubPenguin
{
	[Serializable]
	public class AwayFromKeyboardState
	{
		public AwayFromKeyboardState(AwayFromKeyboardStateType type, EquippedObject equippedObject)
		{
		}

		public AwayFromKeyboardStateType Type;
		public EquippedObject EquippedObject;
	}
}
