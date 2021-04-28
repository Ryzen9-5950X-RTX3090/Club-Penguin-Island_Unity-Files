using System;
using ClubPenguin.Core;

namespace ClubPenguin.CellPhone
{
	[Serializable]
	public class CellPhoneScheduledLocationActivityDefinition : CellPhoneLocationActivityDefinition
	{
		public ScheduledEventDateDefinition AvailableDates;
	}
}
