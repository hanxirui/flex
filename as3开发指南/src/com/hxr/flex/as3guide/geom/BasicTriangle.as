package com.hxr.flex.as3guide.geom
{
	import flash.display.Shape;

	public class BasicTriangle 
	{
		public function BasicTriangle()
		{
			
			
		
		}
		
		public function getTriangle():Shape{
		
			var triangleHeight:uint = 100; 
			var triangle:Shape = new Shape(); 
			
			// red triangle, starting at point 0, 0 
			triangle.graphics.beginFill(0xFF0000); 
			triangle.graphics.moveTo(triangleHeight / 2, 0); 
			triangle.graphics.lineTo(triangleHeight, triangleHeight); 
			triangle.graphics.lineTo(0, triangleHeight); 
			triangle.graphics.lineTo(triangleHeight / 2, 0); 
			
			// green triangle, starting at point 200, 0 
			triangle.graphics.beginFill(0x00FF00); 
			triangle.graphics.moveTo(200 + triangleHeight / 2, 0); 
			triangle.graphics.lineTo(200 + triangleHeight, triangleHeight); 
			triangle.graphics.lineTo(200, triangleHeight); 
			triangle.graphics.lineTo(200 + triangleHeight / 2, 0); 
			return triangle;
		}
	}
}