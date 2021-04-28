using System;
using Disney.Kelowna.Common.DataModel;
using System.Collections.Generic;
using ClubPenguin;

namespace ClubPenguin.ClothingDesigner.Inventory
{
	[Serializable]
	public class InventoryData : ScopedData
	{
		public List<long> CurrentAvatarEquipment;
		public List<EquipmentCategoryDefinitionContentKey> CategoryKeys;
	}
}
