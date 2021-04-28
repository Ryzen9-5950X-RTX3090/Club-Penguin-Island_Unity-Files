using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.Core
{
	[Serializable]
	public class TagDefinition : StaticGameDataDefinition
	{
		public string Tag;
		public TagCategoryDefinition Category;
		[TextAreaAttribute]
		public string Description;
	}
}
