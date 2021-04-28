using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Commerce
{
	[Serializable]
	public class CommerceResourceURLsDefinition : StaticGameDataDefinition
	{
		public string Id;
		public string BaseURL;
		public string[] JavascriptURLs;
		public string[] CSSURLs;
	}
}
