using System;
using UnityEngine;

namespace ClubPenguin.Tags
{
	[Serializable]
	public class OutfitTagMatcher : BaseOutfitTagMatcher
	{
		[SerializeField]
		private OutfitTagMatcher2[] matchers;
	}
}
