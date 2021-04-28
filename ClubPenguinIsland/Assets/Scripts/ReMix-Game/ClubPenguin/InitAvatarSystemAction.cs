using Disney.LaunchPadFramework;
using ClubPenguin.Avatar;

namespace ClubPenguin
{
	public class InitAvatarSystemAction : InitActionComponent
	{
		public string PenguinPrefabPrefix;
		public AvatarDefinitionContentKey AvatarDefinitionKey;
		public AvatarDefinitionContentKey MannequinAvatarDefinitionKey;
		public bool UseGpuSkinning;
		public bool CombineLocal;
		public bool CombineRemote;
	}
}
