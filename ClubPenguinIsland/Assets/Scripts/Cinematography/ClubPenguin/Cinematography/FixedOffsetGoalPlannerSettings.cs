using System;
using ClubPenguin.Core;
using UnityEngine;

namespace ClubPenguin.Cinematography
{
	[Serializable]
	public class FixedOffsetGoalPlannerSettings : AbstractAspectRatioSpecificSettings
	{
		public Vector3 Offset;
	}
}
