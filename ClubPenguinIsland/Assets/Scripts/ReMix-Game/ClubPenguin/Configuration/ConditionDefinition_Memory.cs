namespace ClubPenguin.Configuration
{
	public class ConditionDefinition_Memory : ConditionDefinition
	{
		public enum MemoryTypeEnum
		{
			SYSTEM = 0,
			GRAPHIC = 1,
		}

		public MemoryTypeEnum MemoryType;
		public int LessThanEqualToMemory;
	}
}
