using UnityEngine;

namespace Disney.Kelowna.Common.GameObjectTree
{
	public class StaticTreeNodeDefinition : TreeNodeDefinition
	{
		public GameObject NodePrefab;
		public TreeNodeDefinition[] ChildNodes;
	}
}
