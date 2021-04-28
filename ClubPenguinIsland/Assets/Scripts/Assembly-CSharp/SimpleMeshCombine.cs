using UnityEngine;

public class SimpleMeshCombine : MonoBehaviour
{
	public GameObject[] combinedGameOjects;
	public GameObject combined;
	public string meshName;
	public bool _canGenerateLightmapUV;
	public int vCount;
	public bool generateLightmapUV;
	public GameObject copyTarget;
	public bool destroyOldColliders;
	public bool keepStructure;
}
