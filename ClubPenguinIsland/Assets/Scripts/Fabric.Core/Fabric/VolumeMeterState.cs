using System;

namespace Fabric
{
	[Serializable]
	public class VolumeMeterState
	{
		[Serializable]
		public class stSpeakers
		{
			public float[] mChannels;
			public float mRMS;
		}

		public int mHistoryIndex;
		public stSpeakers[] mHistory;
		public stSpeakers mPeaks;
		public float mRMS;
	}
}
