using UnityEngine;

namespace Disney.Native.iOS
{
	public class iOSHapticFeedback : MonoBehaviour
	{
		public enum HapticFeedbackType
		{
			None = 0,
			ImpactLight = 1,
			ImpactMedium = 2,
			ImpactHeavy = 3,
			NotificationError = 4,
			NotificationSuccess = 5,
			NotificationWarning = 6,
			Selection = 7,
		}

	}
}
