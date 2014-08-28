package com.hxr.flex.as3guide.display
{
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class CustomCircle extends Sprite 
	{
		var xPos:Number; 
		var yPos:Number; 
		var radius:Number; 
		var color:uint; 
		var offsetX:Number; 
		var offsetY:Number; 
		var draggedObject:DisplayObject; 
		public function CustomCircle(xInput:Number,  
									 yInput:Number,  
									 rInput:Number,  
									 colorInput:uint) 
		{ 
			xPos = xInput; 
			yPos = yInput; 
			radius = rInput; 
			color = colorInput; 
			this.graphics.beginFill(color); 
			this.graphics.drawCircle(xPos, yPos, radius); 
			this.graphics.endFill(); 
			this.addEventListener(MouseEvent.MOUSE_DOWN, startDragging); 
			this.addEventListener(MouseEvent.MOUSE_UP, stopDragging);
		} 

		
		// This function is called when the mouse button is pressed. 
		public function startDragging(event:MouseEvent):void 
		{ 
			// remember which object is being dragged 
			draggedObject = DisplayObject(event.target); 
			
			// Record the difference (offset) between where 
			// the cursor was when the mouse button was pressed and the x, y 
			// coordinate of the circle when the mouse button was pressed. 
			offsetX = event.stageX - this.x; 
			offsetY = event.stageY - this.y; 
			
			// move the selected object to the top of the display list 
			stage.addChild(draggedObject); 
			
			// tell Flash Player to start listening for the mouseMove event 
			stage.addEventListener(MouseEvent.MOUSE_MOVE, dragCircle); 
			

		} 
		
		// This function is called when the mouse button is released. 
		public function stopDragging(event:MouseEvent):void 
		{ 
			// Tell Flash Player to stop listening for the mouseMove event. 
			stage.removeEventListener(MouseEvent.MOUSE_MOVE, dragCircle); 
		} 
		
		// This function is called every time the mouse moves, 
		// as long as the mouse button is pressed down. 
		public function dragCircle(event:MouseEvent):void 
		{ 
			// Move the circle to the location of the cursor, maintaining  
			// the offset between the cursor's location and the  
			// location of the dragged object. 
			this.x = event.stageX - offsetX; 
			this.y = event.stageY - offsetY; 
			
			
			// Instruct Flash Player to refresh the screen after this event. 
			event.updateAfterEvent(); 
		} 
		

	}
}