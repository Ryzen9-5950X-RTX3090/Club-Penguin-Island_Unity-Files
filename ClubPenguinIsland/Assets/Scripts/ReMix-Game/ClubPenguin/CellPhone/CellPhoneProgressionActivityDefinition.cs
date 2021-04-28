using System;
using ClubPenguin.Net.Domain;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneProgressionActivityDefinition : CellPhoneActivityDefinition
	{
		public string TipToken;
		public Reward RewardItems;
	}
}
