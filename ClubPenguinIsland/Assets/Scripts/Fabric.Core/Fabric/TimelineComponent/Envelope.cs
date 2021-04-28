using System;
using UnityEngine;

namespace Fabric.TimelineComponent
{
	[Serializable]
	public class Envelope
	{
		[SerializeField]
		public Point[] _points;
		[SerializeField]
		public int _selectedPoint;
	}
}
