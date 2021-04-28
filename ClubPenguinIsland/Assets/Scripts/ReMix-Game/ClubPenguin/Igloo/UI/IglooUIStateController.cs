using Disney.Kelowna.Common;
using ClubPenguin;
using Disney.Kelowna.Common.SEDFSM;
using ClubPenguin.Igloo;

namespace ClubPenguin.Igloo.UI
{
	public class IglooUIStateController : AbstractIglooUIStateController
	{
		public PrefabContentKey ManageIglooPopupKey;
		public PrefabContentKey DefaultLoadingScreen;
		public ZoneDefinition IglooExitZoneDefinition;
		public SceneSwapUIMediator SceneSwapper;
		public StateMachineContextListener ContextListener;
		public IglooDataSyncManager DataManager;
		public IglooCreateUIStateController CreateStateController;
		public IglooEditUIStateController EditStateController;
		public IglooPreviewUIStateController PreviewStateController;
		public IglooPlayUIStateController PlayStateController;
	}
}
