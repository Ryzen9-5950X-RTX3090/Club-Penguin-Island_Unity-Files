using System;
using Disney.Kelowna.Common.DataModel;

namespace ClubPenguin.Core
{
	[Serializable]
	public class SceneLayoutData : ScopedData
	{
		public long LayoutId;
		public bool IsDirty;
		public int MaxLayoutItems;
		public bool ItemLimitWarningShown;
		public long CreatedDate;
		public long LastModifiedDate;
		public bool MemberOnly;
	}
}
