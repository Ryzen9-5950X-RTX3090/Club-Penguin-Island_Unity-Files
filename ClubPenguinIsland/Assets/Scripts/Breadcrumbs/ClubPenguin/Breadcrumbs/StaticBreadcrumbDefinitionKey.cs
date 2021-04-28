using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Breadcrumbs
{
	[Serializable]
	public class StaticBreadcrumbDefinitionKey : TypedStaticGameDataKey<StaticBreadcrumbDefinition, string>
	{
		public StaticBreadcrumbDefinitionKey(string id)
		{
		}

	}
}
