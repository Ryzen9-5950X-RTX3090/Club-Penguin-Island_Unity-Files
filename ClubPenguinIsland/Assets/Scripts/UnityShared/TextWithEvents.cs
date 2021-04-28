using System;
using UnityEngine.UI;
using UnityEngine;

[Serializable]
public class TextWithEvents : Text
{
	[TextAreaAttribute]
	public string nonParsedStr;
	public bool linksDefined;
}
