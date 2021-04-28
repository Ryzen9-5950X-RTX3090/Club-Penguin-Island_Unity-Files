using UnityEngine;

namespace ClubPenguin.Configuration
{
	public class ConditionalTier<T> : ScriptableObject
	{
		public ConditionDefinition Condition;
		public string AnalyticsName;
		public T StaticValue;
	}
}
