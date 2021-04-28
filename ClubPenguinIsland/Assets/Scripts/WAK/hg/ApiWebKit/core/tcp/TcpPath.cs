using System;

namespace hg.ApiWebKit.core.tcp
{
	[Serializable]
	public class TcpPath
	{
		public string Hostname;
		public int Port;
		public int ReadBufferSize;
		public float ConnectTimeout;
		public float ReceiveTimeout;
		public float SendTimeout;
	}
}
