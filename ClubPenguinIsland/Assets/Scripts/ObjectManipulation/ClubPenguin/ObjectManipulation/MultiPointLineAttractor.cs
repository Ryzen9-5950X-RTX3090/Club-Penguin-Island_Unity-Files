using UnityEngine;

namespace ClubPenguin.ObjectManipulation
{
	public class MultiPointLineAttractor : MonoBehaviour
	{
		public int Segments;
		public Vector3 AttractorSize;
		public Vector3 AttractorCenter;
		[SerializeField]
		private ObjectManipulator trackedObject;
		[SerializeField]
		private int trackedObjectSize;
	}
}
