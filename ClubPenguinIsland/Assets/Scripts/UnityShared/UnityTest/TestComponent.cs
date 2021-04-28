using UnityEngine;

namespace UnityTest
{
	public class TestComponent : MonoBehaviour
	{
		public enum IncludedPlatforms
		{
			WindowsEditor = 1,
			OSXEditor = 2,
			WindowsPlayer = 4,
			OSXPlayer = 8,
			LinuxPlayer = 16,
			MetroPlayerX86 = 32,
			MetroPlayerX64 = 64,
			MetroPlayerARM = 128,
			WindowsWebPlayer = 256,
			OSXWebPlayer = 512,
			Android = 1024,
			IPhonePlayer = 2048,
			TizenPlayer = 4096,
			WP8Player = 8192,
			BB10Player = 16384,
			NaCl = 32768,
			PS3 = 65536,
			XBOX360 = 131072,
			WiiPlayer = 262144,
			PSP2 = 524288,
			PS4 = 1048576,
			PSMPlayer = 2097152,
			XboxOne = 4194304,
		}

		public float timeout;
		public bool ignored;
		public bool succeedAfterAllAssertionsAreExecuted;
		public bool expectException;
		public string expectedExceptionList;
		public bool succeedWhenExceptionIsThrown;
		public IncludedPlatforms includedPlatforms;
		public string[] platformsToIgnore;
		public bool dynamic;
		public string dynamicTypeName;
	}
}
