using UnityEngine;
using System.Collections.Generic;

namespace ClubPenguin.BlobShadows
{
	public class BlobShadowRenderer : MonoBehaviour
	{
		public float ShadowBoxDimension;
		public int RenderTextureDimension;
		public Texture2D ShadowTexture;
		public List<BlobShadowCaster> ShadowCasters;
		public bool BlobShadowsSupported;
	}
}
