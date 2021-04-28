using UnityEngine;

public class EasyButton : MonoBehaviour
{
	public enum ButtonState
	{
		Down = 0,
		Press = 1,
		Up = 2,
		None = 3,
	}

	public enum ButtonAnchor
	{
		UpperLeft = 0,
		UpperCenter = 1,
		UpperRight = 2,
		MiddleLeft = 3,
		MiddleCenter = 4,
		MiddleRight = 5,
		LowerLeft = 6,
		LowerCenter = 7,
		LowerRight = 8,
	}

	public enum InteractionType
	{
		Event = 0,
		Include = 1,
	}

	public enum Broadcast
	{
		SendMessage = 0,
		SendMessageUpwards = 1,
		BroadcastMessage = 2,
	}

	public bool enable;
	public bool isActivated;
	public bool showDebugArea;
	public bool selected;
	public bool isUseGuiLayout;
	public ButtonState buttonState;
	[SerializeField]
	private ButtonAnchor anchor;
	[SerializeField]
	private Vector2 offset;
	[SerializeField]
	private Vector2 scale;
	public bool isSwipeIn;
	public bool isSwipeOut;
	public InteractionType interaction;
	public bool useBroadcast;
	public GameObject receiverGameObject;
	public Broadcast messageMode;
	public bool useSpecificalMethod;
	public string downMethodName;
	public string pressMethodName;
	public string upMethodName;
	public int guiDepth;
	[SerializeField]
	private Texture2D normalTexture;
	public Color buttonNormalColor;
	[SerializeField]
	private Texture2D activeTexture;
	public Color buttonActiveColor;
	public bool showInspectorProperties;
	public bool showInspectorPosition;
	public bool showInspectorEvent;
	public bool showInspectorTexture;
}
