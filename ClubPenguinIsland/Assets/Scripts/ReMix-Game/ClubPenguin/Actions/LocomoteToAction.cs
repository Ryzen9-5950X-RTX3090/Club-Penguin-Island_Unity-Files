using System.Collections.Generic;
using UnityEngine;
using ClubPenguin.Net.Client.Event;

namespace ClubPenguin.Actions
{
	public class LocomoteToAction : Action
	{
		public List<Transform> Waypoints;
		public PlayerLocoStyle.Style Style;
		public float DistanceThreshold;
		public float AngleThreshold;
		public bool UseShortestPath;
		public bool SnapRotAtEnd;
		public bool DontSnapYPosAtEnd;
	}
}
