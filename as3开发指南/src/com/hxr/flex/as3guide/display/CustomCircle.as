package com.hxr.flex.as3guide.display
{
	import flash.display.DisplayObject;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	
	public class CustomCircle extends Sprite 
	{
		var xPos:Number; 
		var yPos:Number; 
		var radius:Number; 
		var color:uint; 
		var offsetX:Number; 
		var offsetY:Number; 
		var draggedObject:DisplayObject; 
		// draw a circle and add it to the display list 
		var circle:Sprite = new Sprite(); 
		public function CustomCircle(xInput:Number,  
									 yInput:Number,  
									 rInput:Number,  
									 colorInput:uint) 
		{ 
			xPos = xInput; 
			yPos = yInput; 
			radius = rInput; 
			color = colorInput; 
			circle.graphics.beginFill(color); 
			circle.graphics.drawCircle(xPos, yPos, radius); 
			circle.graphics.endFill(); 
			circle.addEventListener(MouseEvent.MOUSE_DOWN, startDragging); 
			circle.addEventListener(MouseEvent.MOUSE_UP, stopDragging);
			
			this.addChild(circle);
			// When this animation starts, this function is called every frame. 
			// The change made by this function (updated to the screen every 
			// frame) is what causes the animation to occur. 
			function fadeCircle(event:Event):void 
			{ 
				circle.alpha -= .05; 
				
				if (circle.alpha <= 0) 
				{ 
					circle.removeEventListener(Event.ENTER_FRAME, fadeCircle); 
				} 
			} 
			
			function startAnimation(event:MouseEvent):void 
			{ 
				// Get access to the ColorTransform instance associated with this object. 
				var colorInfo:ColorTransform = circle.transform.colorTransform; 
				// Set the color of the ColorTransform object. 
				colorInfo.color = 0x003399; 
				// apply the change to the display object 
				circle.transform.colorTransform = colorInfo; 
				
				circle.addEventListener(Event.ENTER_FRAME, fadeCircle); 
			} 
			
			circle.addEventListener(MouseEvent.CLICK, startAnimation);
			
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