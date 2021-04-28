using UnityEngine;

public class MainNavButtonSelector : MonoBehaviour
{
	public enum MainNavButtonNames
	{
		MainNavButton_Profile = 0,
		MainNavButton_Quest = 1,
		MainNavButton_Consumables = 2,
		MainNavButton_MoreOptions = 3,
		MainNavButton_Control = 4,
	}

	public MainNavButtonNames MainNavButtonName;
}
