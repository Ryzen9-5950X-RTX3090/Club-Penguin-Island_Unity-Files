namespace hg.ApiWebKit.apis
{
	public class ApiMonitor : Singleton<ApiMonitor>
	{
		public float BytesSent;
		public float BytesReceived;
		public float SucceededCalls;
		public float FailedCalls;
		public float FaultedCalls;
		public float NetworkTime;
	}
}
