using Disney.Kelowna.Common.SEDFSM;

namespace ClubPenguin
{
	public class MixLoginStateHandler : AbstractStateHandler
	{
		public string MissingInfoEvent;
		public string LegalUpdateEvent;
		public string ParentalConsentRequiredEvent;
	}
}
