using UnityEngine;

namespace Fabric
{
	public class AssetLoader : MonoBehaviour
	{
		public AssetLoaderItem[] assetsToLoad;
		public AssetLoaderType loadType;
		public EventTrigger[] eventTriggers;
	}
}
