using UnityEngine;
using DevonLocalization.Core;

namespace DevonLocalization
{
	public class AbstractLocalizedText : MonoBehaviour
	{
		public string token;
		public bool doNotLocalize;
		public bool stripVisibleNewline;
		public Platform platform;
		public string tokenType;
		public string tokenSubType;
	}
}
