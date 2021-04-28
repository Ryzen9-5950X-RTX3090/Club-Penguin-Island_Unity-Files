using UnityEngine;

public class SetLayerWeightAnimatorStateBehavior : StateMachineBehaviour
{
	public string LayerToSetWeight;
	public float WeightDuringThisState;
	public float WeightAtExitOfThisState;
	public float NormTimeStart;
	public float NormTimeExit;
}
