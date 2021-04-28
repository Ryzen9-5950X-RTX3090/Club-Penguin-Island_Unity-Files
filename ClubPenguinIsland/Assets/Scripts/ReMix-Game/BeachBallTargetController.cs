using UnityEngine;
using System;
using System.Collections.Generic;

public class BeachBallTargetController : MonoBehaviour
{
	[Serializable]
	public class TargetDefinition
	{
		public BeachBallTargetController.TargetType type;
		public BeachBallTargetController.TargetFace face;
		public int pointValue;
		public int blockerLevel;
	}

	public enum TargetType
	{
		Positive = 0,
		Negative = 1,
		Shielded = 2,
	}

	public enum TargetFace
	{
		Low = 0,
		Medium = 1,
		High = 2,
		Negative = 3,
		Shield = 4,
	}

	public List<GameObject> hiddenFloatingScoreTextList;
	public float minVisibleTime;
	public float maxVisibleTime;
	public int goal;
	public int goalTarget;
	public float totalTime;
	public TextMesh scoreText;
	public TextMesh goalText;
	public TextMesh timerText;
	public TargetDefinition[] definitions;
}
