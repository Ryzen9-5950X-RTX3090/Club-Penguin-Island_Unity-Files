using UnityEngine;
using System;
using ClubPenguin.Props;
using Disney.Kelowna.Common;
using ClubPenguin.UI;
using ClubPenguin.Cinematography;

namespace ClubPenguin.Adventure
{
	public class DanceBattleQuestGameController : MonoBehaviour
	{
		[Serializable]
		public struct RoundMoveList
		{
			public bool RandomizeMoves;
			public int MoveCount;
			public int[] Moves;
			public int NumMovesToShow;
		}

		public PropDefinition DanceProp;
		public GameObject MoveIconContainer;
		public GameObject MoveIconInputContainer;
		public PrefabContentKey MoveIconKey;
		public GameObject[] Screens;
		public string RoundFailedEvent;
		public string RoundSuccessEvent;
		public UITimer InputMovesTimer;
		public CameraController DanceCamera;
		public Transform DanceCameraTarget;
		public CameraController ScreenCamera;
		public Transform ScreenCameraTarget;
		public CameraController PCDanceCamera;
		public Transform PCDanceCameraTarget;
		public CameraController PCScreenCamera;
		public Transform PCScreenCameraTarget;
		public float DanceIconDelay;
		public float DanceIconEndDelay;
		public float InputTime;
		public float DanceMoveTime;
		public float PenguinDanceStartDelay;
		public float PenguinDanceEndDelay;
		public RoundMoveList[] RoundMovesList;
	}
}
