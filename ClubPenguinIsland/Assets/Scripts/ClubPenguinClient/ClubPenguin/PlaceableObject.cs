using UnityEngine;

namespace ClubPenguin
{
	public class PlaceableObject : MonoBehaviour
	{
		public ParticleSystem ParticlesPrefab;
		public Collider MyCollider;
		public GameObject RenderableGameObject;
		public string FurnitureTemplateID;
		public ParticleSystem ParticlesPrefabDropFurniture;
		public PlaceableObject Next;
		public int PieceNumber;
		public GameObject partner;
		public bool isVisibleOnDeselect;
		public bool isVisibleInWorldMode;
	}
}
