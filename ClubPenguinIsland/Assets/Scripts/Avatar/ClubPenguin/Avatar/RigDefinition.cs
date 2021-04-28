using System;
using UnityEngine;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class RigDefinition
	{
		[Serializable]
		public class Bone
		{
			public Bone(Transform source)
			{
			}

			public string Name;
			public Vector3 Position;
			public Quaternion Rotation;
			public int ChildCount;
		}

		public Bone[] Bones;
	}
}
