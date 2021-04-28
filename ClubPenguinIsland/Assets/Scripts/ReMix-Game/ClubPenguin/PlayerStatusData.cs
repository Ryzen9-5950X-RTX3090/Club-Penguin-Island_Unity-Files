using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class PlayerStatusData : ScopedData
	{
		[SerializeField]
		private string questMascotName;
	}
}
