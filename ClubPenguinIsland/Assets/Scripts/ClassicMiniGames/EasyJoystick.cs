using UnityEngine;

public class EasyJoystick : MonoBehaviour
{
	public enum DynamicArea
	{
		FullScreen = 0,
		Left = 1,
		Right = 2,
		Top = 3,
		Bottom = 4,
		TopLeft = 5,
		TopRight = 6,
		BottomLeft = 7,
		BottomRight = 8,
	}

	public enum JoystickAnchor
	{
		None = 0,
		UpperLeft = 1,
		UpperCenter = 2,
		UpperRight = 3,
		MiddleLeft = 4,
		MiddleCenter = 5,
		MiddleRight = 6,
		LowerLeft = 7,
		LowerCenter = 8,
		LowerRight = 9,
	}

	public enum InteractionType
	{
		Direct = 0,
		Include = 1,
		EventNotification = 2,
		DirectAndEvent = 3,
	}

	public enum Broadcast
	{
		SendMessage = 0,
		SendMessageUpwards = 1,
		BroadcastMessage = 2,
	}

	public enum PropertiesInfluenced
	{
		Rotate = 0,
		RotateLocal = 1,
		Translate = 2,
		TranslateLocal = 3,
		Scale = 4,
	}

	public enum AxisInfluenced
	{
		X = 0,
		Y = 1,
		Z = 2,
		XYZ = 3,
	}

	public bool enable;
	public bool visible;
	public bool isActivated;
	public bool showDebugRadius;
	public bool selected;
	public bool useFixedUpdate;
	public bool isUseGuiLayout;
	[SerializeField]
	private bool dynamicJoystick;
	public DynamicArea area;
	[SerializeField]
	private JoystickAnchor joyAnchor;
	[SerializeField]
	private Vector2 joystickPositionOffset;
	[SerializeField]
	private float zoneRadius;
	[SerializeField]
	private float touchSize;
	public float deadZone;
	[SerializeField]
	private bool restrictArea;
	public bool resetFingerExit;
	[SerializeField]
	private InteractionType interaction;
	public bool useBroadcast;
	public Broadcast messageMode;
	public GameObject receiverGameObject;
	public Vector2 speed;
	public bool enableXaxis;
	[SerializeField]
	private Transform xAxisTransform;
	public CharacterController xAxisCharacterController;
	public float xAxisGravity;
	[SerializeField]
	private PropertiesInfluenced xTI;
	public AxisInfluenced xAI;
	public bool inverseXAxis;
	public bool enableXClamp;
	public float clampXMax;
	public float clampXMin;
	public bool enableXAutoStab;
	[SerializeField]
	private float thresholdX;
	[SerializeField]
	private float stabSpeedX;
	public bool enableYaxis;
	[SerializeField]
	private Transform yAxisTransform;
	public CharacterController yAxisCharacterController;
	public float yAxisGravity;
	[SerializeField]
	private PropertiesInfluenced yTI;
	public AxisInfluenced yAI;
	public bool inverseYAxis;
	public bool enableYClamp;
	public float clampYMax;
	public float clampYMin;
	public bool enableYAutoStab;
	[SerializeField]
	private float thresholdY;
	[SerializeField]
	private float stabSpeedY;
	public bool enableSmoothing;
	[SerializeField]
	public Vector2 smoothing;
	public bool enableInertia;
	[SerializeField]
	public Vector2 inertia;
	public int guiDepth;
	public bool showZone;
	public bool showTouch;
	public bool showDeadZone;
	public Texture areaTexture;
	public Color areaColor;
	public Texture touchTexture;
	public Color touchColor;
	public Texture deadTexture;
	public bool showProperties;
	public bool showInteraction;
	public bool showAppearance;
	public bool showPosition;
}
