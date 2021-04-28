using System;
using UnityEngine;

namespace ClubPenguin.Adventure
{
	[Serializable]
	public class DDialogPanel
	{
		[TextAreaAttribute]
		public DialogList.Entry Dialog;
		public string[] i18nTextArgs;
		public bool ClickToClose;
	}
}
