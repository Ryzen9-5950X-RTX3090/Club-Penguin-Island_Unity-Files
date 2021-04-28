using UnityEngine;
using UnityEngine.Events;

namespace ClubPenguin
{
	public class SnowballTarget : MonoBehaviour
	{
		public int Id;
		public UnityEvent HitEventVoid;
		public SnowballHitTargetEvent HitEvent;
	}
}
