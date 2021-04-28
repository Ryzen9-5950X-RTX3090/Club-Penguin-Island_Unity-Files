using UnityEngine;

namespace ClubPenguin.LOD
{
	public class LODRequest : MonoBehaviour
	{
		public LODRequestData Data;
		[SerializeField]
		private GameObject lodGameObjectReference;
		public float TotalWeighting;
	}
}
