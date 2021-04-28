using UnityEngine;
using ClubPenguin.Cinematography;

namespace ClubPenguin.Props
{
	public class Prop : MonoBehaviour
	{
		public enum VisualTreatmentType
		{
			None = 0,
			Solo = 1,
			DeployLowInAir = 2,
			DeployHighInAir = 3,
			Shareable = 4,
		}

		public bool UseOnceImmediately;
		public bool StoreAfterUse;
		public bool PlayIdleAnimAfterUse;
		public VisualTreatmentType VisualTreatment;
		public bool PulsateInteractButton;
		public string TargetBoneName;
		public float MaxDistanceFromUser;
		public bool CheckCollisions;
		public AnimatorOverrideController AnimOverrideController;
		public RuntimeAnimatorController AnimReplacementController;
		public bool IgnoreHoldAnimationComplete;
		public bool IgnoreStoreAnimationComplete;
		public CameraController CustomCamera;
		public iTween.EaseType RetrieveEaseType;
		public float EaseTimeRetrieve;
		public iTween.EaseType StoreEaseType;
		public float EaseTimeStore;
		public Vector3 OnUseDestination;
		public PropUser PropUserRef;
		public bool UpdateUser;
		public string ExperienceInstanceId;
		public long OwnerId;
		public string PropId;
		public bool IsOwnerLocalPlayer;
		public PropDefinition PropDef;
		public bool IsUseCompleted;
	}
}
