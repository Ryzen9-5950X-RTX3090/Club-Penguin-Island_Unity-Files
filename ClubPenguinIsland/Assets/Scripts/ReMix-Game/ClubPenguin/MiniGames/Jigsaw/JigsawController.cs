using UnityEngine;

namespace ClubPenguin.MiniGames.Jigsaw
{
	public class JigsawController : MonoBehaviour
	{
		public float SnapDistance;
		public int snapAssistDuration;
		public Color MouseoverColor;
		public Color ShadowColor;
		public bool IsMeshPuzzle;
		public iTween.EaseType minigameIntroEaseType;
		public iTween.EaseType minigameSolvedEaseType;
		public float minigameTweenTime;
		public float minigameDelay;
		public Vector3 introOffset;
		public string audioPuzzleSlideIn;
		public string audioPuzzleSlideOut;
		public string audioPuzzlePieceDrop;
		public string audioPuzzleSolved;
		public string switchTo;
		public GameObject switchGameObject;
		public iTween.EaseType easeType;
		public float TweenTimeMin;
		public float TweenTimeMax;
		public float DelayMin;
		public float DelayMax;
		public iTween.EaseType pieceEaseType;
		public float PieceTweenTime;
		public float PieceDelay;
		public GameObject ParticlesLockPiece;
		public Vector3 PieceParticlePosition;
		public Vector3 PieceParticleScale;
		public iTween.EaseType solveEaseType;
		public float ArtworkTweenTime;
		public float ArtworkSolveDelay;
		public GameObject ParticlesSolvePuzzle;
		public Vector3 ArtworkParticlePosition;
		public Vector3 ArtworkParticleScale;
		public Color SuccessColor;
	}
}
