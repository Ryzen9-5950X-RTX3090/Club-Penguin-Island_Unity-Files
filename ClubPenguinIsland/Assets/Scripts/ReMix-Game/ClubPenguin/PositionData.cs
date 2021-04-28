using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class PositionData : ScopedData
	{
		[SerializeField]
		private Vector3 position;
	}
}
