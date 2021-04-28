using UnityEngine;
using System;
using System.Collections.Generic;

namespace ClubPenguin
{
	public class ImportedProperties : MonoBehaviour
	{
		[Serializable]
		public struct StringProperty
		{
			public StringProperty(string key, object value) : this()
			{
			}

			public string Key;
			public string Value;
		}

		[Serializable]
		public struct FloatProperty
		{
			public FloatProperty(string key, object value) : this()
			{
			}

			public string Key;
			public float Value;
		}

		[Serializable]
		public struct ColorProperty
		{
			public ColorProperty(string key, object value) : this()
			{
			}

			public string Key;
			public Color Value;
		}

		[Serializable]
		public struct BooleanProperty
		{
			public BooleanProperty(string key, object value) : this()
			{
			}

			public string Key;
			public bool Value;
		}

		public List<ImportedProperties.StringProperty> Strings;
		public List<ImportedProperties.FloatProperty> Floats;
		public List<ImportedProperties.ColorProperty> Colors;
		public List<ImportedProperties.BooleanProperty> Booleans;
	}
}
