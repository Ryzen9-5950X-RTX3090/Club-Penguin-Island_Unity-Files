using System;
using ClubPenguin.Core.StaticGameData;
using UnityEngine;

namespace ClubPenguin.Core
{
	[Serializable]
	public class TagCategoryDefinition : StaticGameDataDefinition
	{
		public string CategoryName;
		[TextAreaAttribute]
		public string Description;
	}
}
