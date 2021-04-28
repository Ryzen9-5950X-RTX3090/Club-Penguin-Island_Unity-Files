using UnityEngine;
using hg.ApiWebKit;

namespace hg.ApiWebKit.core.http
{
	public class HttpAbstractProvider : MonoBehaviour
	{
		[SerializeField]
		private string _id;
		[SerializeField]
		private string _targetUri;
		[SerializeField]
		private float _transferProgress;
		[SerializeField]
		private float _elapsedTime;
		[SerializeField]
		private float _timeToLive;
		[SerializeField]
		private HttpRequestState _state;
	}
}
