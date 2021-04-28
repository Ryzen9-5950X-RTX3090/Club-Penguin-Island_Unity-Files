using System;
using ClubPenguin.Core.StaticGameData;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class TemplateDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string AssetName;
		public bool WorkInProgress;
		public string Name;
		public string Description;
		public int Cost;
		public EquipmentCategoryDefinitionContentKey CategoryKey;
		public bool IsEditable;
		public bool IsMemberOnlyCreatable;
		public float ZoomOffset;
		public float RotationYOffset;
		public TagDefinition[] Tags;
		[SerializeField]
		private bool isMemberOnly;
		public TemplateRenderDataContentKey RenderDataKey;
	}
}
