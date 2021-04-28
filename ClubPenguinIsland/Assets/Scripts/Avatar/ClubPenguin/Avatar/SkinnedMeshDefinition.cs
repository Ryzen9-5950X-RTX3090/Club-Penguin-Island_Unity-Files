using System;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class SkinnedMeshDefinition : MeshDefinition
	{
		public SkinnedMeshDefinition(bool useGpuSkinning)
		{
		}

		public string RootBoneName;
		public string[] BoneNames;
	}
}
