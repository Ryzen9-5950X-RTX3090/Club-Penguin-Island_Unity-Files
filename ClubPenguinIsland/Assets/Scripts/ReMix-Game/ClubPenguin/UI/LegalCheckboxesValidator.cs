using UnityEngine;
using UnityEngine.Events;

namespace ClubPenguin.UI
{
	public class LegalCheckboxesValidator : MonoBehaviour
	{
		public GameObject LegalPanel;
		public Transform LegalTextParent;
		public GameObject LegalSpinner;
		public GameObject EMEALegalTextExtra;
		public bool IsValidationComplete;
		public bool IsValidationInProgress;
		public bool HasError;
		public LegalTextController LegalTextPrefab;
		public ValidationEvent OnValidationError;
		public UnityEvent OnValidationSuccess;
	}
}
