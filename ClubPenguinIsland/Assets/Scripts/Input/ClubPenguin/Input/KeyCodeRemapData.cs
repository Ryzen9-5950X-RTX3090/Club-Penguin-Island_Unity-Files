using UnityEngine;
using System;

namespace ClubPenguin.Input
{
	public class KeyCodeRemapData : ScriptableObject
	{
		[Serializable]
		public struct KeyCodeRemap
		{
			public KeyCode KeyCode;
			public KeyCode RemappedKeyCode;
		}

		public KeyCodeRemap[] KeyCodeRemaps;
	}
}
