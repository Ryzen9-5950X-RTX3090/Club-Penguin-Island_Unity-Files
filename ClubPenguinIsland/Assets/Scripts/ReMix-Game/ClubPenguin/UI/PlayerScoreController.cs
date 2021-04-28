using ClubPenguin;
using UnityEngine;
using Disney.Kelowna.Common;

namespace ClubPenguin.UI
{
	public class PlayerScoreController : AvatarPositionTranslator
	{
		[SerializeField]
		private float maximumRange;
		public PrefabContentKey PlayerScorePrefabContentKey;
	}
}
