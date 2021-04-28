namespace Fabric
{
	public enum EventNotificationType
	{
		OnFinished = 0,
		OnStolenOldest = 1,
		OnStolenNewest = 2,
		OnStolenFarthest = 3,
		OnAudioComponentStopped = 4,
		OnSequenceNextEntry = 5,
		OnSequenceAdvance = 6,
		OnSequenceEnd = 7,
		OnSequenceLoop = 8,
		OnSwitch = 9,
		OnMarker = 10,
		OnRegionSet = 11,
		OnRegionQueued = 12,
		OnRegionEnd = 13,
		OnAudioComponentPlay = 14,
		OnPlay = 15,
		OnPlayNotHandled = 16,
		OnStolenNone = 17,
	}
}
