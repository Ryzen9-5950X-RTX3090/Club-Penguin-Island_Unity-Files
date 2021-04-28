using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class SessionIdData : ScopedData
	{
		[SerializeField]
		private long sessionId;
	}
}
