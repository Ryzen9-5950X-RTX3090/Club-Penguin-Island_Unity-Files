using System;
using UnityEngine;

namespace ClubPenguin.Tags
{
	[Serializable]
	public class OutfitTagMatcher2 : BaseOutfitTagMatcher
	{
		[SerializeField]
		private OutfitTagMatcher3[] matchers;
	}
}
