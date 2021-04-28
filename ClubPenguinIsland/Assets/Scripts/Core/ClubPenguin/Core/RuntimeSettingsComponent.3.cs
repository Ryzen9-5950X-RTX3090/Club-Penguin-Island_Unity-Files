using UnityEngine;

namespace ClubPenguin.Core
{
	public class RuntimeSettingsComponent<TComponent, TSettings, TEnum> : MonoBehaviour
	{
		[SerializeField]
		internal TSettings[] runtimeSettings;
	}
}
