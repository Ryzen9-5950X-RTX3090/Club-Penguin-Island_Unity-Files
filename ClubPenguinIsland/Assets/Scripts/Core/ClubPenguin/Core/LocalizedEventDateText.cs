using DevonLocalization;
using System;
using UnityEngine;

namespace ClubPenguin.Core
{
	public class LocalizedEventDateText : LocalizedText
	{
		[Serializable]
		private struct DateOptions
		{
			public bool UseYear;
			public bool UseMonth;
			public bool UseDay;
			public bool SubtractDay;
		}

		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public DateType DateType;
		[SerializeField]
		private DateOptions startDateOptions;
		[SerializeField]
		private DateOptions endDateOptions;
	}
}
