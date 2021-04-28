using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class GameObjectReferenceData : ScopedData
	{
		[SerializeField]
		private GameObject gameObjectReference;
	}
}
