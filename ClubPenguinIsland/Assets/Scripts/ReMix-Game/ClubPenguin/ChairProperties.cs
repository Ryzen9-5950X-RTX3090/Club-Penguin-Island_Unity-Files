using UnityEngine;
using System;

namespace ClubPenguin
{
	public class ChairProperties : MonoBehaviour
	{
		[Serializable]
		public struct Properties
		{
			public int EnterSitAnimIndex;
			public int SitAnimIndex;
			public Vector3 ChestBoneRotation;
		}

		public Properties Fields;
	}
}
