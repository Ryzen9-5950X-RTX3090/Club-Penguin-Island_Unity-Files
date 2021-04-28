using System;
using Disney.Kelowna.Common.Environment;

namespace Disney.Kelowna.Common.Tests
{
	public class ReadManifestDirectoryTest : BaseIntegrationTest
	{
		[Serializable]
		public class SampleAssetEntry
		{
			public string Key;
			public string Uri;
			public string Scheme;
		}

		[Serializable]
		public class ExpectedResultType
		{
			public string TestName;
			public string ClientVersion;
			public string Platform;
			public string ContentDate;
			public Environment Environment;
			public bool RequiresAppUgrade;
			public int AssetEntriesSize;
			public int BundleEntriesSize;
			public ReadManifestDirectoryTest.SampleAssetEntry[] SampleAssetEntries;
			public string BaseUri;
		}

		public ExpectedResultType ExpectedResult;
	}
}
