using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.UI
{
	[Serializable]
	public class SizzleClipDefinition : StaticGameDataDefinition
	{
		public int Id;
		public string AnimationHash;
		public float IconAnimationTime;
		[SerializeField]
		private bool isMemberOnly;
	}
}
