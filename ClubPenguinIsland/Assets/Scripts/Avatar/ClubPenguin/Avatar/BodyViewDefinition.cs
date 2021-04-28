using System;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class BodyViewDefinition : BaseViewDefinition
	{
		public SkinnedMeshDefinition SkinnedMesh;
		public BodyMaterialProperties BodyMaterial;
	}
}
