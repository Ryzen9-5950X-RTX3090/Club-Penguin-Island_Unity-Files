using UnityEngine;
using System.Collections.Generic;

public class EasyTouch : MonoBehaviour
{
	public bool enable;
	public bool enableRemote;
	public bool useBroadcastMessage;
	public GameObject receiverObject;
	public bool isExtension;
	public bool enable2FingersGesture;
	public bool enableTwist;
	public bool enablePinch;
	public List<ECamera> touchCameras;
	public bool autoSelect;
	public LayerMask pickableLayers;
	public bool enable2D;
	public LayerMask pickableLayers2D;
	public float StationnaryTolerance;
	public float longTapTime;
	public float swipeTolerance;
	public float minPinchLength;
	public float minTwistAngle;
	public bool enabledNGuiMode;
	public LayerMask nGUILayers;
	public List<Camera> nGUICameras;
	public List<Rect> reservedAreas;
	public List<Rect> reservedVirtualAreas;
	public List<Rect> reservedGuiAreas;
	public bool enableReservedArea;
	public KeyCode twistKey;
	public KeyCode swipeKey;
	public bool showGeneral;
	public bool showSelect;
	public bool showGesture;
	public bool showTwoFinger;
	public bool showSecondFinger;
	public Texture secondFingerTexture;
}
