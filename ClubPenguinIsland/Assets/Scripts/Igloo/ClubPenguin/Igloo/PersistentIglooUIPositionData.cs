using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin.Igloo
{
	[Serializable]
	public class PersistentIglooUIPositionData : ScopedData
	{
		public string ScreenName;
		public Vector2 Position;
	}
}
