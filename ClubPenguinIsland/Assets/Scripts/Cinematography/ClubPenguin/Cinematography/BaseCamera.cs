using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin.Cinematography
{
	public class BaseCamera : MonoBehaviour
	{
		[SerializeField]
		private Vector3 desiredGoal;
		[SerializeField]
		private Vector3 constrainedGoal;
		[SerializeField]
		private Quaternion glance;
		[SerializeField]
		private Vector3 lookat;
		[SerializeField]
		private Vector3 prevTargetPosition;
		[SerializeField]
		private Vector3 prevTargetVelocity;
		[SerializeField]
		private Transform target;
		[SerializeField]
		private List<CameraController> controllers;
		[SerializeField]
		private CameraController currentGoalPlannerController;
		[SerializeField]
		private CameraController currentFramerController;
		[SerializeField]
		private Vector3 moveVelocity;
		[SerializeField]
		private Vector3 aimVelocity;
	}
}
