namespace ClubPenguin.Actions
{
	public class FilterTriggerAction : Action
	{
		public string OwnerTag;
		public bool TriggerEveryFrame;
		public bool ExcludeIfSitting;
		public bool ExcludeIfSwimming;
		public bool ExcludeIfInAir;
	}
}
