using ClubPenguin.Core;
using System.Collections.Generic;

public class WatcherSwitch : Switch
{
	public List<TaskWatcher> enableWatchers;
	public List<TaskWatcher> disableWatchers;
}
