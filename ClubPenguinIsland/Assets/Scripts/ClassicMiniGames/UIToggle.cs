using UnityEngine;
using System.Collections.Generic;

public class UIToggle : UIWidgetContainer
{
	public int group;
	public UIWidget activeSprite;
	public Animation activeAnimation;
	public bool startsActive;
	public bool instantTween;
	public bool optionCanBeNone;
	public List<EventDelegate> onChange;
	[SerializeField]
	private UISprite checkSprite;
	[SerializeField]
	private Animation checkAnimation;
	[SerializeField]
	private GameObject eventReceiver;
	[SerializeField]
	private string functionName;
	[SerializeField]
	private bool startsChecked;
}
