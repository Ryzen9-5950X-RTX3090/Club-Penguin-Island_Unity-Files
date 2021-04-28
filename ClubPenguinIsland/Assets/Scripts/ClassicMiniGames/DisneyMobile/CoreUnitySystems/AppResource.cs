using System;

namespace DisneyMobile.CoreUnitySystems
{
	[Serializable]
	public class AppResource
	{
		public string assetName;
		public string assetFileName;
		public string assetVersion;
		public bool isInstalled;
		public string description;
		public int localCatalogVersion;
		public int serverCatalogVersion;
		public string expirationDate;
		public bool isText;
		public bool isRequired;
		public bool isAmps;
		public bool createLocalCache;
		public int expirationTime;
		public string url;
		public bool inDownloadQueue;
		public bool wasInDownloadQueue;
		public bool mIsLoading;
		public bool SaveCache;
	}
}
