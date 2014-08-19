package com.hxr.cairngormdemo.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	import flash.utils.clearTimeout;
	import flash.utils.setTimeout;  
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.RemoteObject;
	import com.hxr.cairngormdemo.vo.Num;
	
	public class CountDelegate
	{
		private var responder:IResponder;
		private var counter:int;
		private var remoteObject:RemoteObject;      
		public function CountDelegate(responder:IResponder)
		{
			this.responder = responder;
		}
		public function count(num:Num):void
		{
			counter = num.startNum;
			remoteObject = ServiceLocator.getInstance().getRemoteObject("counting");  
			remoteObject.addEventListener(ResultEvent.RESULT,OnResult);
			counting();
		}   
		private function counting():void
		{
			remoteObject.getOperation("count").send(counter);
			flash.utils.setTimeout(counting, 1000); 
		}   
		private function OnResult(evt:ResultEvent):void
		{
			
			counter = evt.result as int;
			
			var result:Num = new Num();
			result.startNum = counter;
			responder.result(result);
		}           
	}
}