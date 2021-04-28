using Disney.Kelowna.Common.SEDFSM;
using ClubPenguin.Igloo;

namespace ClubPenguin
{
	public class SetScreenStateHandler : AbstractMultiStateHandler
	{
		public SceneStateData.SceneState State;
		public bool ReturnToPreviousState;
	}
}
