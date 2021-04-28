using UnityEngine;

namespace ClubPenguin.WorldEditor.Optimization
{
	public class GameObjectData : MonoBehaviour
	{
		public float LightmapWeight;
		public float MinLightmapDistance;
		public Mesh OriginalMesh;
		public bool[] VertexVisibilities;
		public bool[] TriangleVisibilities;
	}
}
