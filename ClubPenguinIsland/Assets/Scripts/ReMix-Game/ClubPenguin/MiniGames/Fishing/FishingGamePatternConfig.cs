using System;
using UnityEngine;

namespace ClubPenguin.MiniGames.Fishing
{
	[Serializable]
	public class FishingGamePatternConfig : ScriptableObject
	{
		public enum Shapes
		{
			Circle = 0,
			Rose = 1,
		}

		public FishPatternData[] fishPatternDatas;
		public Shapes shape;
		public int roseN;
		public int roseD;
		public float roseOffset;
		public float roseRotation;
		public float hookInterp;
		public float baseSpeed;
	}
}
