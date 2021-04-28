using System;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public struct DCustomEquipmentDecal
	{
		public EquipmentDecalType Type;
		public string TextureName;
		public int DefinitionId;
		public int Index;
		public float Scale;
		public float Uoffset;
		public float Voffset;
		public float Rotation;
		public bool Repeat;
	}
}
