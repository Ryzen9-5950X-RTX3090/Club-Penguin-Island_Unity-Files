using UnityEngine;

namespace ZenFulcrum.EmbeddedBrowser
{
	public class Browser : MonoBehaviour
	{
		public enum NewWindowAction
		{
			Ignore = 1,
			Redirect = 2,
			NewBrowser = 3,
			NewWindow = 4,
		}

		[SerializeField]
		private string _url;
		[SerializeField]
		private int _width;
		[SerializeField]
		private int _height;
		public bool generateMipmap;
		public Color32 backgroundColor;
		[SerializeField]
		private float _zoom;
		public BrowserNative.ContextMenuOrigin allowContextMenuOn;
		public NewWindowAction newWindowAction;
	}
}
