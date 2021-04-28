using UnityEngine;
using System;

namespace ClubPenguin.Audio
{
	internal class SceneMusic : MonoBehaviour
	{
		[Serializable]
		public class Snapshot
		{
			public string Name;
			public float TimeToReach;
		}

		public string EventOnEnter;
		public string EventName;
		public Snapshot SnapshotOnEnter;
		public Snapshot SnapshotOnExit;
		public string PersistToScene;
	}
}
