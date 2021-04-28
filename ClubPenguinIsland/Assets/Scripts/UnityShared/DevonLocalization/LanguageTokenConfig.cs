using UnityEngine;
using System;
using DevonLocalization.Core;

namespace DevonLocalization
{
	public class LanguageTokenConfig : ScriptableObject
	{
		[Serializable]
		public struct LanguageToken
		{
			public Language Language;
			public string Token;
		}

		public LanguageToken[] LanguageTokens;
	}
}
