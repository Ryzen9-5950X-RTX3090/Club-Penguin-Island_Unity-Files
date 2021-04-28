using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class FullScreenChatData : ScopedData
	{
		[SerializeField]
		private int messageCount;
	}
}
