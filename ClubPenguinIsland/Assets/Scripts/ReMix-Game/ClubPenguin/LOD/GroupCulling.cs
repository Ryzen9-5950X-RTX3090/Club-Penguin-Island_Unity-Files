using UnityEngine;
using System.Collections.Generic;
using ClubPenguin.Core;

namespace ClubPenguin.LOD
{
	public class GroupCulling : MonoBehaviour
	{
		[SerializeField]
		private List<GameObject> groups;
		[SerializeField]
		private List<Switch> switches;
		[SerializeField]
		private List<int> disabledState;
	}
}
