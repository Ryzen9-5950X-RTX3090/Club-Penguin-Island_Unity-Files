using System;
using ClubPenguin.Core.StaticGameData;

namespace ClubPenguin.Breadcrumbs
{
	[Serializable]
	public class PersistentBreadcrumbTypeDefinitionKey : TypedStaticGameDataKey<PersistentBreadcrumbTypeDefinition, int>
	{
		public PersistentBreadcrumbTypeDefinitionKey(int type)
		{
		}

	}
}
