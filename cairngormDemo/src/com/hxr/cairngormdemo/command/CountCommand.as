package com.hxr.cairngormdemo.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.hxr.cairngormdemo.business.CountDelegate;
	import com.hxr.cairngormdemo.event.CountEvent;
	import com.hxr.cairngormdemo.model.CountModelLocator;
	import com.hxr.cairngormdemo.vo.Num;
	
	import mx.rpc.IResponder;
	
	public class CountCommand implements ICommand, IResponder
	{      
		public function CountCommand(){
			
		}  
		public function execute(event:CairngormEvent):void
		{
			var delegate:CountDelegate = new CountDelegate(this);
			var countEvent:CountEvent = CountEvent(event);
			delegate.count(countEvent.num);
		}      
		public function result(data:Object):void
		{
			var result:Num = data as Num;
			CountModelLocator.getInstance().num = result;
			CountModelLocator.getInstance().count = result.startNum;
		}      
		public function fault(info:Object):void
		{
		}  
	}
}