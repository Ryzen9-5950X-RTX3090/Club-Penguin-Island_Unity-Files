using System;
using UnityEngine;

namespace ClubPenguin.Tags
{
	[Serializable]
	public class TagMatcher2 : BaseRecursiveTagMatcher
	{
		[SerializeField]
		private TagMatcher3[] matchers;
	}
}
