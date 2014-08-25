package com.hxr.flex.as3guide.array
{
	import flash.display.Sprite;
	import flash.utils.Dictionary;

	public class MiddleArray
	{
		public function MiddleArray()
		{
		}
		
		public function display():void{
			var monitorInfo:Object={type:"Flat Panel",resolution:"1600*1200"};
			trace(monitorInfo["type"],monitorInfo["resolution"]);
			
			
			
			
			var groupMap:Dictionary = new Dictionary(); 
			
			// objects to use as keys 
			var spr1:Sprite = new Sprite(); 
			var spr2:Sprite = new Sprite(); 
			var spr3:Sprite = new Sprite(); 
			
			// objects to use as values 
			var groupA:Object = new Object(); 
			var groupB:Object = new Object(); 
			
			// Create new key-value pairs in dictionary. 
			groupMap[spr1] = groupA; 
			groupMap[spr2] = groupB; 
			groupMap[spr3] = groupB; 
			
			if (groupMap[spr1] == groupA) 
			{ 
				trace("spr1 is in groupA");  
			} 
			if (groupMap[spr2] == groupB) 
			{ 
				trace("spr2 is in groupB");  
			} 
			if (groupMap[spr3] == groupB) 
			{ 
				trace("spr3 is in groupB");  
			}
			for (var key:Object in groupMap) 
			{ 
				trace(key, groupMap[key]); 
			} 
			/* output: 
			[object Sprite] [object Object] 
			[object Sprite] [object Object] 
			[object Sprite] [object Object] 
			*/
			
			for each (var item:Object in groupMap) 
			{ 
				trace(item); 
			} 
			/* output: 
			[object Object] 
			[object Object] 
			[object Object] 
			*/
		}
	}
}