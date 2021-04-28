using UnityEngine;
using System.Collections.Generic;

namespace DisneyMobile.CoreUnitySystems.FSM
{
	public class InitializerComponent : MonoBehaviour
	{
		[SerializeField]
		protected List<string> mInitActionList;
	}
}
