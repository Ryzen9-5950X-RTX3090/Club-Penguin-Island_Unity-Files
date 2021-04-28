using Disney.Kelowna.Common.SEDFSM;

namespace ClubPenguin
{
	public class CPRemixRememberMeAccountsCheckStateHandler : ActiveStateHandler
	{
		public string LoginAccountEvent;
		public string SingleAccountEvent;
		public string MultipleAccountEvent;
		public string SoftLoginEvent;
	}
}
