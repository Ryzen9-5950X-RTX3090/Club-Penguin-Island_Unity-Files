using System;
using Disney.Kelowna.Common.DataModel;
using ClubPenguin.Net.Domain.Igloo;
using UnityEngine;

namespace ClubPenguin.Igloo
{
	[Serializable]
	public class SavedIgloosMetaData : ScopedData
	{
		public bool IsDirty;
		[SerializeField]
		private IglooVisibility iglooVisibility;
	}
}
