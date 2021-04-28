using UnityEngine;

namespace ClubPenguin.Core.StaticGameData
{
	public class TypedStaticGameDataKey<T, F> : StaticGameDataKey
	{
		public F Id;
		[SerializeField]
		private string type;
	}
}
