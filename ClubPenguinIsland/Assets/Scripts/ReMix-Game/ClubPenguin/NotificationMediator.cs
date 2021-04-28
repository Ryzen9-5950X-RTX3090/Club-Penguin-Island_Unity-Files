using System;
using ClubPenguin.Breadcrumbs;
using Disney.LaunchPadFramework;
using ClubPenguin.Core;
using ClubPenguin.UI;

namespace ClubPenguin
{
	public class NotificationMediator
	{
		[Serializable]
		public struct BreadcrumbIdentifiers
		{
			public StaticBreadcrumbDefinitionKey DailyChallenge;
			public StaticBreadcrumbDefinitionKey Gear;
			public PersistentBreadcrumbTypeDefinitionKey GearType;
			public StaticBreadcrumbDefinitionKey Template;
			public PersistentBreadcrumbTypeDefinitionKey TemplateType;
			public StaticBreadcrumbDefinitionKey Inventory;
			public PersistentBreadcrumbTypeDefinitionKey InventoryType;
			public StaticBreadcrumbDefinitionKey Fabric;
			public PersistentBreadcrumbTypeDefinitionKey FabricType;
			public StaticBreadcrumbDefinitionKey Decal;
			public PersistentBreadcrumbTypeDefinitionKey DecalType;
			public StaticBreadcrumbDefinitionKey Consumable;
			public PersistentBreadcrumbTypeDefinitionKey ConsumableType;
			public StaticBreadcrumbDefinitionKey Tube;
			public PersistentBreadcrumbTypeDefinitionKey TubeType;
			public StaticBreadcrumbDefinitionKey PartyGame;
			public PersistentBreadcrumbTypeDefinitionKey PartyGameType;
			public StaticBreadcrumbDefinitionKey Decoration;
			public PersistentBreadcrumbTypeDefinitionKey DecorationType;
			public StaticBreadcrumbDefinitionKey Structure;
			public PersistentBreadcrumbTypeDefinitionKey StructureType;
			public StaticBreadcrumbDefinitionKey MusicTrack;
			public PersistentBreadcrumbTypeDefinitionKey MusicTrackType;
			public StaticBreadcrumbDefinitionKey Lighting;
			public PersistentBreadcrumbTypeDefinitionKey LightingType;
		}

		public NotificationMediator(EventDispatcher eventDispatcher, CPDataEntityCollection dataEntityCollection, TrayNotificationManager trayNotificationManager, NotificationBreadcrumbController notificationBreadcrumbController, NotificationMediator.BreadcrumbIdentifiers breadcrumbIdentifiers)
		{
		}

	}
}
