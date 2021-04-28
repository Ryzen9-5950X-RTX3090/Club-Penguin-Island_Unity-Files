using UnityEngine;

namespace ClubPenguin.MiniGames.BlockAndLock
{
	public class BlockAndLockSettings : MonoBehaviour
	{
		public int GridWidth;
		public int GridHeight;
		public float GridAdjustHorz;
		public float GridAdjustVert;
		public GameObject MarkerTopLeft;
		public GameObject MarkerBottomRight;
		public string RestartToken;
		public float MoveTimePerCell;
		public float MoveDecayPerCell;
		public iTween.EaseType PieceMoveEaseType;
		public iTween.EaseType MinigameIntroEaseType;
		public iTween.EaseType MinigameSolvedEaseType;
		public float MinigameTweenTime;
		public Vector3 IntroOffset;
		public string audioPuzzleSlideIn;
		public string audioPuzzleSlideOut;
		public string audioSelectPiece;
		public string audioDeselectPiece;
		public string audioStopObstacle;
		public string audioStopPiece;
		public string audioLockPiece;
		public string audioMovePiece;
		public string audioArrowTapped;
		public string audioRestartButton;
		public string audioPuzzleSolved;
		public string switchTo;
		public GameObject switchGameObject;
		public GameObject AudioPrefab;
		public GameObject completeParticleObj;
		public Color completeParticleColour;
		public Vector3 completeOffset;
		public GameObject restartParticleObj;
		public Color restartParticleColour;
		public Vector3 restartOffset;
		public bool HideLockedPiecesOnSolve;
		public float GridUnitWidth;
		public float GridUnitHeight;
	}
}
