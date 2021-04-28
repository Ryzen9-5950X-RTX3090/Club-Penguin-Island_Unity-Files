using UnityEngine;
using Fabric;

namespace ClubPenguin.Audio
{
	internal class ToggleToFabricEvents : MonoBehaviour
	{
		public bool Mute;
		public string AudioName;
		public EventAction EventType;
		public GameObject OverrideSoundSource;
	}
}
