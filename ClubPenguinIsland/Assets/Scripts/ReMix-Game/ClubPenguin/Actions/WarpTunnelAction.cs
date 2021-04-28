using UnityEngine;

namespace ClubPenguin.Actions
{
	public class WarpTunnelAction : Action
	{
		public bool IsChatEnabled;
		public GameObject Waypoints;
		public string EnterAnimTrigger;
		public string ExitAnimTrigger;
		public bool StopAtEndPoint;
		public float TurnSmoothing;
		public float StartAccel;
		public bool SnapToStart;
		public AnimationCurve TravelAccelCurve;
		public float TravelDelay;
		public float TravelStartSpeed;
		public float TravelSpeed;
		public bool UseWorldUp;
		public bool Is3DSpace;
		public GameObject FakeVehicle;
		public GameObject VehiclePrefab;
		public Transform VehicleSpawnTransform;
		public string SeatName;
		public float Curvature;
		public int Steps;
		public Color drawColor;
	}
}
