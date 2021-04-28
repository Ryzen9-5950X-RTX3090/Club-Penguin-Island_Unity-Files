using UnityEngine;
using Disney.Kelowna.Common;
using UnityEngine.Events;

namespace ClubPenguin.UI
{
	public class ShowPromptComponent : MonoBehaviour
	{
		public PromptDefinitionKey UsePromptDefinitionKey;
		public PrefabContentKey PromptPrefabContentKey;
		public string TitleToken;
		public string BodyToken;
		public bool OkButton;
		public bool CancelButton;
		public bool YesButton;
		public bool NoButton;
		public bool CloseButton;
		public Sprite Image;
		public bool IsModal;
		public bool AutoClose;
		public bool IsTranslated;
		public string SwrveLogTier1;
		public string SwrveLogTier2;
		public UnityEvent OnOkPressed;
		public UnityEvent OnCancelPressed;
		public UnityEvent OnYesPressed;
		public UnityEvent OnNoPressed;
		public UnityEvent OnClosePressed;
	}
}
