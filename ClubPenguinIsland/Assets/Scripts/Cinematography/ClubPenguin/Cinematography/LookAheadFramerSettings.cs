using System;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin.Cinematography
{
	[Serializable]
	public class LookAheadFramerSettings : AbstractAspectRatioSpecificSettings
	{
		public Vector3 Offset;
		public Vector3 OffsetWithKeyboard;
	}
}
