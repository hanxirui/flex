package com.hxr.flex.as3guide.geom
{
	import flash.display.Shape;

	public class BasicBessel
	{
		public function BasicBessel()
		{
		}
		public function getBessel():Shape{
			var size:uint = 100; 
			var roundObject:Shape = new Shape(); 
			
			// red circular shape 
			roundObject.graphics.beginFill(0xFF0000); 
			roundObject.graphics.moveTo(size / 2, 0); 
			roundObject.graphics.curveTo(size, 0, size, size / 2); 
			roundObject.graphics.curveTo(size, size, size / 2, size); 
			roundObject.graphics.curveTo(0, size, 0, size / 2); 
			roundObject.graphics.curveTo(0, 0, size / 2, 0); 
			
			// green circular shape 
			roundObject.graphics.beginFill(0x00FF00); 
			roundObject.graphics.moveTo(200 + size / 2, 0); 
			roundObject.graphics.curveTo(200 + size, 0, 200 + size, size / 2); 
			roundObject.graphics.curveTo(200 + size, size, 200 + size / 2, size); 
			roundObject.graphics.curveTo(200, size, 200, size / 2); 
			roundObject.graphics.curveTo(200, 0, 200 + size / 2, 0); 
		    return roundObject;
		}
	}
}