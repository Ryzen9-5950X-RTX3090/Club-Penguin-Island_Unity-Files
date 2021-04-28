using UnityEngine;

namespace ClubPenguin
{
	public class RemotePlayerBotGenerator : MonoBehaviour
	{
		public bool SpawnOnAwake;
		public bool AutoRemove;
		public float SpawnRadius;
		public int BotsToSpawn;
		public int SpawnDelay;
		public long LastSessionID;
		public string BotName;
		public bool FollowPlayer;
	}
}
