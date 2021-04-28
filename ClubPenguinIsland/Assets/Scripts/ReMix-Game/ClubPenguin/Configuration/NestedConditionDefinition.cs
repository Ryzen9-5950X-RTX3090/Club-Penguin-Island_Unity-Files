namespace ClubPenguin.Configuration
{
	public class NestedConditionDefinition : ConditionDefinition
	{
		public Operators ConditionOperation;
		public ConditionDefinition[] Conditions;
	}
}
