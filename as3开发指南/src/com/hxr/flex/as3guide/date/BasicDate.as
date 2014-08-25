package com.hxr.flex.as3guide.date
{
	public class BasicDate
	{
		public function BasicDate()
		{
		}
		
		public function dispaly():void{
			var now:Date = new Date();			
			var millisecondsPerDay:int = 1000 * 60 * 60 * 24; 
			// gets a Date one day after the start date of 1/1/1970 
			var startTime:Date = new Date(millisecondsPerDay);
			var millenium:Date = new Date(2000, 0, 1, 0, 0, 0, 0);
			var nextDay:Date = new Date("Mon May 1 2006 11:30:00 AM");
			trace(now);
			trace(startTime);
			trace(millenium);
			trace(nextDay);
		}
	}
}