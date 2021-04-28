using System;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public struct DCustomEquipment
	{
		public long Id;
		public int DefinitionId;
		public string Name;
		public DCustomEquipmentPart[] Parts;
		public long DateTimeCreated;
	}
}
