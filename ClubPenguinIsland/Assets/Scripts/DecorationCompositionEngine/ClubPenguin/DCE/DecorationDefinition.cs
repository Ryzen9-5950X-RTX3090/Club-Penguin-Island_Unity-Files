using UnityEngine;
using System;

namespace ClubPenguin.DCE
{
	public class DecorationDefinition : ScriptableObject
	{
		[Serializable]
		public class DecorationModelDefinition
		{
			[Serializable]
			public struct Part
			{
				public int SlotIndex;
				public bool Required;
			}

			public string Name;
			public Part[] Parts;
		}

		public DecorationModelDefinition[] DecorationModelDefinitions;
		public string[] BoneNames;
		public Matrix4x4[] BindPose;
		public Avatar UnityAvatar;
		public RendererProperties RenderProperties;
	}
}
