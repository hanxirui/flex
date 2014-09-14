package com.hxr.flex.as3guide.geom
{
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	
	public class BasicMatrix extends Sprite 
	{
		var xPos:Number; 
		var yPos:Number; 
		var radius:Number; 
		var color:uint; 
		var offsetX:Number; 
		var offsetY:Number; 
		var draggedObject:DisplayObject; 
		public function BasicMatrix(xInput:Number,  
									 yInput:Number,  
									 rInput:Number,  
									 colorInput:uint) 
		{ 
			xPos = xInput; 
			yPos = yInput; 
			radius = rInput; 
			color = colorInput; 
			this.graphics.beginFill(color); 
			this.graphics.drawRect(xPos, yPos, radius,radius); 
			this.addEventListener(MouseEvent.CLICK,rotate);
			
	
		} 

		public function rotate(event:MouseEvent):void
		{
			var matrix:Matrix = this.transform.matrix; 
//			该对象可将某个对象水平缩放 2.0、垂直缩放 3.0、旋转 45°、向右移动（转换）10 像素并向下移动 20 像素：
			var scaleX:Number = 2.0; 
			var scaleY:Number = 3.0; 
			var rotation:Number = 2 * Math.PI * (45 / 360); 
			var tx:Number = 10; 
			var ty:Number = 20; 
			matrix.createBox(scaleX, scaleY, rotation, tx, ty);
			
			this.transform.matrix = matrix;
		}

	}
}