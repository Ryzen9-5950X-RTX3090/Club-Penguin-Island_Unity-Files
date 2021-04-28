using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin.Participation
{
	[Serializable]
	public class ParticipationData : BaseData
	{
		[SerializeField]
		private GameObject participatingObject;
	}
}
