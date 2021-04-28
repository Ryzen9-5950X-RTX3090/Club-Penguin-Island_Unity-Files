using UnityEngine;
using ClubPenguin.Igloo;
using ClubPenguin.SceneManipulation;
using Disney.Kelowna.Common;

namespace ClubPenguin
{
	public class SetSceneStateButton : MonoBehaviour
	{
		public SceneStateData.SceneState State;
		public bool SendLayoutId;
		public SceneLayoutIdComponent SceneLayoutId;
		public bool SetSplashScreen;
		public PrefabContentKey SplashScreenOverride;
	}
}
