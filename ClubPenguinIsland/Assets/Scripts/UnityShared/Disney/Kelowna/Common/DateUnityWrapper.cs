using System;
using UnityEngine;

namespace Disney.Kelowna.Common
{
	[Serializable]
	public class DateUnityWrapper
	{
		[SerializeField]
		private int day;
		[SerializeField]
		private int month;
		[SerializeField]
		private int year;
		public long TimeStampInMilliseconds;
	}
}
