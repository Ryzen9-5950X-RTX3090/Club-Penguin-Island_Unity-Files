using UnityEngine;
using System;
using ClubPenguin.Core;
using System.Collections.Generic;

namespace ClubPenguin
{
	public class CyclingButton : MonoBehaviour
	{
		[Serializable]
		public struct CycleSpritePair
		{
			public InputEvents.Cycles Cycle;
			public int SpriteIndex;
		}

		public List<CyclingButton.CycleSpritePair> Cycles;
		public CycleSpritePair[] Test;
		public SpriteSelector SpriteSelector;
		public float DoubleTapTime;
	}
}
