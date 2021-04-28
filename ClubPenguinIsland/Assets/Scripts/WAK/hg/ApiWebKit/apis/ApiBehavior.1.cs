using UnityEngine;
using hg.ApiWebKit.core.http;
using hg.ApiWebKit;
using System;

namespace hg.ApiWebKit.apis
{
	public class ApiBehavior<T> : MonoBehaviour
	{
		[MultilineAttribute]
		public string RequestQuickView;
		[MultilineAttribute]
		public string ResponseQuickView;
		public HttpOperation Operation;
		public HttpRequestModel.HttpRequestModelResult Request;
		public HttpResponse Response;
		public float WaitWhenBusy;
		public ApiBehaviorStatus Status;
		public string CompletionTime;
		public Action<T, ApiBehaviorStatus> OnCompleteNotification;
	}
}
