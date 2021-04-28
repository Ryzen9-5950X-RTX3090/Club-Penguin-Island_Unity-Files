using UnityEngine;
using UnityEngine.UI;
using ClubPenguin.Core;

namespace ClubPenguin.Halloween
{
	public class ProgressOverTime : MonoBehaviour
	{
		public GameObject scenePrefab;
		public Image FillMeter;
		public GameObject FillMeterComplete;
		public Text ProgressText;
		public string InProgressToken;
		public string ProgressDoneToken;
		public float MinValue;
		public float MaxValue;
		public float FinalValue;
		public ScheduledEventDateDefinitionKey DateDefinitionKey;
		public int UpdateIntervalMinutes;
		public int UpdateRandomSeconds;
		public GameObject IncreaseEffect;
		public Vector3 EffectOffset;
		public string AudioIncreaseEffect;
	}
}
