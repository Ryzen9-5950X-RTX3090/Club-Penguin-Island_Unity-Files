using System.Collections.Generic;

public class UIButton : UIButtonColor
{
	public bool dragHighlight;
	public string hoverSprite;
	public string pressedSprite;
	public string disabledSprite;
	public bool pixelSnap;
	public List<EventDelegate> onClick;
}
