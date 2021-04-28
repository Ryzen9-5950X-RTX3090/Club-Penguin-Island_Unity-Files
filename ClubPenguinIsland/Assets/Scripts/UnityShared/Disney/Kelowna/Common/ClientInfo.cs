using UnityEngine;

namespace Disney.Kelowna.Common
{
	public class ClientInfo : ScriptableObject
	{
		public string ClientVersion;
		public string BuildVersion;
		public string Changelist;
		public string[] GameAssemblyNames;
		public string Platform;
		public string BuildTargetGroup;
		public string BuildPhase;
	}
}
