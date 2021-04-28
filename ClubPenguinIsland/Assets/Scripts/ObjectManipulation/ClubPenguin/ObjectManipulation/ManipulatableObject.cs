using UnityEngine;
using ClubPenguin.Core;

namespace ClubPenguin.ObjectManipulation
{
	public class ManipulatableObject : MonoBehaviour
	{
		public string PathId;
		public int DefinitionId;
		public DecorationLayoutData.DefinitionType Type;
		[SerializeField]
		private bool isSquashed;
	}
}
