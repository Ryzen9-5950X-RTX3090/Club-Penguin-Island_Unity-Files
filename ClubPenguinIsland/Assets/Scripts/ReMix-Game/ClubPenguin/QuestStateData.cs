using System;
using Disney.Kelowna.Common.DataModel;
using ClubPenguin.Net.Domain;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class QuestStateData : ScopedData
	{
		[SerializeField]
		private QuestStateCollection data;
	}
}
