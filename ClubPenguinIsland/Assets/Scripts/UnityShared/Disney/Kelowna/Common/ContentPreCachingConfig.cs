using UnityEngine;

namespace Disney.Kelowna.Common
{
	public class ContentPreCachingConfig : ScriptableObject
	{
		public uint BundlePrecacheSeconds;
		public uint MaxConcurrentForegroundDownloads;
		public uint MaxConcurrentBackgroundDownloads;
	}
}
