using UnityEngine;

namespace ClubPenguin
{
	public class ZoneTransition : MonoBehaviour
	{
		public ZoneDefinitionKey ZoneDefinitionKey;
		public ZoneDefinition Zone;
		public string LoadingScene;
		public Vector3 DestinationSpawnPoint;
		public Vector3 DestinationSpawnRotation;
	}
}
