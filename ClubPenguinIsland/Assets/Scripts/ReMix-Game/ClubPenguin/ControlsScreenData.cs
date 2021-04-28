using System;
using Disney.Kelowna.Common.DataModel;
using System.Collections.Generic;
using ClubPenguin.UI;
using UnityEngine;

namespace ClubPenguin
{
	[Serializable]
	public class ControlsScreenData : BaseData
	{
		public List<InputButtonContentKey> ButtonOverrides;
		public GameObject DefaultLeftOptionPrefab;
	}
}
