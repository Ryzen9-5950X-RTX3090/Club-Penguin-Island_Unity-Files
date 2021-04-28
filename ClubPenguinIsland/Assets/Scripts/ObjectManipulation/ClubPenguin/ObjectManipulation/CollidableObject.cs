using UnityEngine;
using ClubPenguin.Core;

namespace ClubPenguin.ObjectManipulation
{
	public class CollidableObject : MonoBehaviour
	{
		public CollisionRuleSetDefinitionKey CollisionRuleSet;
		[SerializeField]
		private bool isSquashed;
		[SerializeField]
		private Collider[] myColliders;
	}
}
