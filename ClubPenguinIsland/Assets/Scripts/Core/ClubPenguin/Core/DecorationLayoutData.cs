using System;
using UnityEngine;

namespace ClubPenguin.Core
{
	[Serializable]
	public struct DecorationLayoutData
	{
		public enum DefinitionType
		{
			Decoration = 0,
			Structure = 1,
		}

		public DefinitionType Type;
		public int DefinitionId;
		public Vector3 Position;
		public Quaternion Rotation;
		public float UniformScale;
	}
}
