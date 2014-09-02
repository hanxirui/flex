package com.hxr.flex.as3guide.display
{
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	
//	失败的样例，没有效果
	public class ScrollRect extends Sprite
	{
		var bigText:TextField = new TextField();
		public function ScrollRect()
		{
			super();
			
			
			// Define the initial viewable area of the TextField instance: 
			// left: 0, top: 0, width: TextField's width, height: 350 pixels. 
			bigText.scrollRect = new Rectangle(0, 0, bigText.width, 350); 
			bigText.text="Riil BMC";
			
			// Cache the TextField as a bitmap to improve performance. 
			bigText.cacheAsBitmap = true; 
			
			this.addChild(bigText);
			
		    var up:SimpleButton = new SimpleButton();
			this.addChild(up);
			
			var down:SimpleButton = new SimpleButton();
			this.addChild(down);
			
			up.addEventListener(MouseEvent.CLICK, scrollUp); 
			down.addEventListener(MouseEvent.CLICK, scrollDown);
		}
		
		// called when the "up" button is clicked 
		function scrollUp(event:MouseEvent):void 
		{ 
			// Get access to the current scroll rectangle. 
			var rect:Rectangle = bigText.scrollRect; 
			// Decrease the y value of the rectangle by 20, effectively  
			// shifting the rectangle down by 20 pixels. 
			rect.y -= 20; 
			// Reassign the rectangle to the TextField to "apply" the change. 
			bigText.scrollRect = rect; 
		} 
		
		// called when the "down" button is clicked  
		function scrollDown(event:MouseEvent):void 
		{ 
			// Get access to the current scroll rectangle. 
			var rect:Rectangle = bigText.scrollRect; 
			// Increase the y value of the rectangle by 20, effectively  
			// shifting the rectangle up by 20 pixels. 
			rect.y += 20; 
			// Reassign the rectangle to the TextField to "apply" the change. 
			bigText.scrollRect = rect; 
		} 
	}
}