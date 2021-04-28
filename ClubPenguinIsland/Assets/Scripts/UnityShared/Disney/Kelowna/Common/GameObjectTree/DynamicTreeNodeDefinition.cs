using UnityEngine;

namespace Disney.Kelowna.Common.GameObjectTree
{
	public class DynamicTreeNodeDefinition : TreeNodeDefinition
	{
		public TreeNodeDefinitionContentKey NodeDefinitionContentKey;
		public GameObject BasePrefab;
		public bool StartActive;
		public bool UnloadAllObjectsOnUnload;
	}
}
