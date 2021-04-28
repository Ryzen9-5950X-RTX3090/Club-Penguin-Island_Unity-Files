using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;
using ClubPenguin.Avatar;

namespace ClubPenguin
{
	[Serializable]
	public class AvatarDetailsData : BaseData
	{
		[SerializeField]
		private Color bodyColor;
		[SerializeField]
		private DCustomEquipment[] outfit;
	}
}
