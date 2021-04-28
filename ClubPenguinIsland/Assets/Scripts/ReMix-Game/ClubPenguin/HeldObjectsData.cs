using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class HeldObjectsData : BaseData
	{
		[SerializeField]
		private DHeldObject heldObject;
		[SerializeField]
		private bool isInvitationalExperience;
	}
}
