package com.hxr.flex.as3guide.date
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class ShortTimer extends Sprite
	{
		public function ShortTimer()  
		{ 
			// creates a new five-second Timer 
			var minuteTimer:Timer = new Timer(1000, 5); 
			
			// designates listeners for the interval and completion events 
			minuteTimer.addEventListener(TimerEvent.TIMER, onTick); 
			minuteTimer.addEventListener(TimerEvent.TIMER_COMPLETE, onTimerComplete); 
			
			minuteTimer.repeatCount=10;
			// starts the timer ticking 
			minuteTimer.start(); 
			
		} 
		
		public function onTick(event:TimerEvent):void  
		{ 
			// displays the tick count so far 
			// The target of this event is the Timer instance itself. 
			trace("tick " + event.target.currentCount); 
		} 
		
		public function onTimerComplete(event:TimerEvent):void 
		{ 
			trace("Time's Up!"); 
		} 
	}
}