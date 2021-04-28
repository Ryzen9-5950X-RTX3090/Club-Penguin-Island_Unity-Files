using System;
using UnityEngine;

namespace ClubPenguin.WorldEditor.Optimization
{
	public class VisibilityMatrix : VisibilityIterator
	{
		[Serializable]
		public struct Voxel
		{
			public bool Active;
			public uint Facings;
		}

		public Vector3 Granularity;
		public int DimensionX;
		public int DimensionY;
		public int DimensionZ;
		public int FacingCount;
		public Voxel[] Voxels;
	}
}
