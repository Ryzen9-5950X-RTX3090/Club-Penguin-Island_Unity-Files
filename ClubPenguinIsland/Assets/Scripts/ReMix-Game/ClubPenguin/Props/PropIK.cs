using UnityEngine;
using System;

namespace ClubPenguin.Props
{
	public class PropIK : MonoBehaviour
	{
		[Serializable]
		public struct IKModifier
		{
			public string BoneName;
			public float IdleZRot;
			public float SwimMoveZRot;
			public float DiveMoveZRot;
		}

		public IKModifier[] IKModifiers;
	}
}
