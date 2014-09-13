package com.hxr.flex.as3guide.geom
{
	import flash.geom.Point;

	public class BasicPoint
	{
		public function BasicPoint()
		{
			
		}
		public function display():void{
			var pt1:Point = new Point(10, 20); // x == 10; y == 20 
			var pt2:Point = new Point(); 
			pt2.x = 100; 
			pt2.y = 200;
			
			var distance:Number = Point.distance(pt1, pt2);
			trace("distance=========="+distance);
		}
	}
}