using System;
using ClubPenguin.Core;
using ClubPenguin.Props;
using ClubPenguin.Tags;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class ConsumablePurchaseWatcher : TaskWatcher
	{
		public PropDefinition[] props;
		public TagMatcher Tags;
	}
}
