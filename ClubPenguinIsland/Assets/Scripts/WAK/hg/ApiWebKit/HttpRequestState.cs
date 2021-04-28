namespace hg.ApiWebKit
{
	public enum HttpRequestState
	{
		NONE = 0,
		IDLE = 1,
		BUSY = 2,
		STARTED = 3,
		COMPLETED = 4,
		TIMEOUT = 5,
		ERROR = 6,
		CANCELLED = 7,
		DISCONNECTED = 8,
	}
}
