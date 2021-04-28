using UnityEngine;

namespace ClubPenguin.Avatar
{
	public class AvatarDefinition : ScriptableObject
	{
		public AvatarSlot[] Slots;
		public EquipmentList EquipmentList;
		public RigDefinition RigDefinition;
		public string[] BoneNames;
		public Matrix4x4[] BindPose;
		public BodyColorMaterialProperties BodyColor;
		public Avatar UnityAvatar;
		public RendererProperties RenderProperties;
	}
}
