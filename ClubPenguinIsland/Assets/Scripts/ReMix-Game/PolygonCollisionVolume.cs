using UnityEngine;

public class PolygonCollisionVolume : MonoBehaviour
{
	public enum ColliderBehavior
	{
		SingleComplexMesh = 0,
		SingleConvex = 1,
		MultipleConvex = 2,
	}

	public ColliderBehavior colliderBehavior;
	public bool generateTopAndBottom;
	public bool generateEdges;
	public bool isTrigger;
	public float Height;
	public float YOriginOffset;
	[SerializeField]
	private Vector2[] m_Points;
	[SerializeField]
	private bool m_Generated;
}
