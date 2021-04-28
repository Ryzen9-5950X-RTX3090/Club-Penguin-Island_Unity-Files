using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class PropToBeRestoredData : ScopedData
	{
		[SerializeField]
		private string propId;
	}
}
