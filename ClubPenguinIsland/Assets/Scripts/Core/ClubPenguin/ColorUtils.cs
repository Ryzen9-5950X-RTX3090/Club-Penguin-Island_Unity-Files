using System;
using UnityEngine;

namespace ClubPenguin
{
	public class ColorUtils
	{
		[Serializable]
		public struct ColorAtPercent
		{
			public ColorAtPercent(float percent, Color color) : this()
			{
			}

			public float Percent;
			public Color Color;
		}

	}
}
