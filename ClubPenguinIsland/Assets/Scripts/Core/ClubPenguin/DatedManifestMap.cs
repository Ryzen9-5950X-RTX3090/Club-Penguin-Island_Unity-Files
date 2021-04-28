using System;
using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin
{
	[Serializable]
	public class DatedManifestMap : ScriptableObject
	{
		public List<DatedManifest> Manifests;
	}
}
