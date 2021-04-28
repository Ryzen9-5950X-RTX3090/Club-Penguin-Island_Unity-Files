using System;
using ClubPenguin.Core.StaticGameData;
using Disney.Kelowna.Common;

namespace ClubPenguin.Breadcrumbs
{
	[Serializable]
	public class FeatureLabelBreadcrumbDefinition : StaticGameDataDefinition
	{
		public string TypeId;
		public PersistentBreadcrumbTypeDefinition Type;
		public DateUnityWrapper EndDate;
		public FeatureLabelBreadcrumbDefinition[] DependentFeatureLabelBreadcrumbs;
	}
}
