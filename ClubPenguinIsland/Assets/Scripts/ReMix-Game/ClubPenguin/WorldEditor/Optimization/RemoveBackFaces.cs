namespace ClubPenguin.WorldEditor.Optimization
{
	public class RemoveBackFaces : HiddenSurfaceRemoval
	{
		public float CullGeoBelowDotProduct;
		public bool Force360FOV;
	}
}
