using UnityEngine;
using System;
using System.Collections.Generic;

namespace ClubPenguin
{
	public class LayoutMappings : MonoBehaviour
	{
		[Serializable]
		public class LayoutMapping
		{
			public LayoutMapping(string name, string layoutType)
			{
			}

			public string Name;
			public string LayoutType;
		}

		public List<LayoutMappings.LayoutMapping> Layouts;
	}
}
