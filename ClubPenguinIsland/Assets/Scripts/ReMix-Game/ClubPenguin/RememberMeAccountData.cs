using System;
using ClubPenguin.Avatar;

namespace ClubPenguin
{
	[Serializable]
	public class RememberMeAccountData
	{
		public string Username;
		public string DisplayName;
		public bool IsMember;
		public MembershipType MembershipType;
		public float _bodyColor_r;
		public float _bodyColor_g;
		public float _bodyColor_b;
		public DCustomEquipment[] Outfit;
	}
}
