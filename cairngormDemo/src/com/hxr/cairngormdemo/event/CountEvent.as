package com.hxr.cairngormdemo.event
{
	import com.hxr.cairngormdemo.control.CountFrontControl;
	
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import com.hxr.cairngormdemo.vo.Num;
	
	public class CountEvent extends CairngormEvent
	{
		public var num:Num = new Num();
		public function CountEvent(num:Num)
		{
			super(CountFrontControl.COUNT_EVENT);
			this.num = num;
		}
	}
}