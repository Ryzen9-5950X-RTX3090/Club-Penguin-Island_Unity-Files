using System;
using UnityEngine;
using UnityEngine.Rendering;

namespace ClubPenguin.Avatar
{
	[Serializable]
	public class RendererProperties
	{
		public RendererProperties(Renderer renderer)
		{
		}

		public bool ReceiveShadows;
		public ReflectionProbeUsage ReflectionProbeUsage;
		public ShadowCastingMode ShadowCastingMode;
		public bool UseLightProbes;
	}
}
