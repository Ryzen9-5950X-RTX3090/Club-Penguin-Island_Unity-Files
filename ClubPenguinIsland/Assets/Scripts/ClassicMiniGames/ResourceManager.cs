using UnityEngine;
using System.Collections.Generic;
using DisneyMobile.CoreUnitySystems;

public class ResourceManager : MonoBehaviour
{
	public string mAMPSAppID;
	public string mAMPSServer;
	public string mNetworkMode;
	public int mMaxConcurrentDownload;
	public string mResourceVersion;
	public bool mEnableAMPS;
	public bool ResourceVersioncheckInProgress;
	public AMPVersionResultData AMPSAssetList;
	public List<AppResource> TestCatalog;
}
