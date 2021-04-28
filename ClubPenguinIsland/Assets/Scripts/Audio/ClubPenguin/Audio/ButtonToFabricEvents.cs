using UnityEngine;
using Fabric;

namespace ClubPenguin.Audio
{
	public class ButtonToFabricEvents : MonoBehaviour
	{
		public bool Mute;
		public string AudioName;
		public EventAction EventType;
		public GameObject OverrideSoundSource;
	}
}
