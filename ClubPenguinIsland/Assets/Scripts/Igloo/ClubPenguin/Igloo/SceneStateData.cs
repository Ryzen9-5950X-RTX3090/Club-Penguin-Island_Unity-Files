using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;

namespace ClubPenguin.Igloo
{
	[Serializable]
	public class SceneStateData : ScopedData
	{
		public enum SceneState
		{
			Play = 0,
			Edit = 1,
			Preview = 2,
			StructurePlacement = 3,
			Create = 4,
		}

		[SerializeField]
		private SceneState state;
	}
}
