using ClubPenguin.UI;
using UnityEngine.UI;
using ClubPenguin.Input;
using UnityEngine;

public class QuestItemPopup : AnimatedPopup
{
	public Text HeaderText;
	public ButtonClickListener TakeItemButton;
	public RectTransform ItemPanel;
	public Transform ItemPrefab;
	public string NotificationText;
}
