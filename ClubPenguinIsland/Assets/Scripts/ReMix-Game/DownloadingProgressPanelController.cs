using UnityEngine;
using UnityEngine.UI;

public class DownloadingProgressPanelController : MonoBehaviour
{
	public Text HeadlineText;
	public Text DetailsText;
	public GameObject Emojis;
	public GameObject SetEmoji;
	public GameObject ProgressBarFill;
	public float fillStripesRepeatSeconds;
	public RectTransform fillStripes;
	public float FakeProgress;
	public bool FullProgressCompleted;
}
