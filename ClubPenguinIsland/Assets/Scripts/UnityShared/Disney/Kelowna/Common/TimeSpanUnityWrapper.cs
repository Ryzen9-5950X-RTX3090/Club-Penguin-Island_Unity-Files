using System;
using UnityEngine;

namespace Disney.Kelowna.Common
{
	[Serializable]
	public class TimeSpanUnityWrapper
	{
		[SerializeField]
		private int days;
		[SerializeField]
		private int hours;
		[SerializeField]
		private int minutes;
		[SerializeField]
		private int seconds;
	}
}
