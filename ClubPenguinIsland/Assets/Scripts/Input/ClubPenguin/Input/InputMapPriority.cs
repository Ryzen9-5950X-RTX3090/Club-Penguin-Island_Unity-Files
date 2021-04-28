using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin.Input
{
	public class InputMapPriority : ScriptableObject
	{
		public List<InputMapLib> PriorityList;
		public InputMapLib ModalInputMap;
		public InputMapLib AnyKeyInputMap;
	}
}
