using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin
{
	[Serializable]
	public class AvatarColorDefinition : StaticGameDataDefinition
	{
		public int ColorId;
		public int ViewOrder;
		public string ColorName;
		public string Color;
	}
}
