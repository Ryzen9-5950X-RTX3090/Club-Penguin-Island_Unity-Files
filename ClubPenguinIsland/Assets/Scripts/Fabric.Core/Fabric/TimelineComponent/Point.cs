using System;
using UnityEngine;

namespace Fabric.TimelineComponent
{
	[Serializable]
	public class Point
	{
		[SerializeField]
		public float _x;
		[SerializeField]
		public float _y;
		[SerializeField]
		public CurveTypes _curveType;
		[SerializeField]
		public bool _locked;
	}
}
