using System;
using Disney.Kelowna.Common.DataModel;
using UnityEngine;
using ClubPenguin.Net.Domain;

namespace ClubPenguin
{
	[Serializable]
	public class PresenceData : BaseData
	{
		[SerializeField]
		private string world;
		[SerializeField]
		private string room;
		[SerializeField]
		private string contentIdentifier;
		[SerializeField]
		private ZoneId instanceRoom;
		[SerializeField]
		private bool isNotInCurrentRoomsScene;
		[SerializeField]
		private bool isAway;
		[SerializeField]
		private AwayFromKeyboardState afkState;
		[SerializeField]
		private TemporaryHeadStatusType temporaryHeadStatusType;
		[SerializeField]
		private bool isDisconnecting;
	}
}
