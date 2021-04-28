using UnityEngine;
using System;
using Disney.Kelowna.Common;

namespace ClubPenguin.Choreography
{
	public class InteractionDefinition : ScriptableObject
	{
		[Serializable]
		public struct Track
		{
			[Serializable]
			public struct Step
			{
				public int SyncPointIndex;
				public ScriptableAction Action;
			}

			public string Name;
			public Step[] Steps;
		}

		[Serializable]
		public struct SyncPoint
		{
			public string Name;
			public int WaitMask;
			public SharedLogic Logic;
		}

		public Track[] Tracks;
		public SyncPoint[] SyncPoints;
	}
}
