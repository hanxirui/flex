package com.hxr.cairngormdemo.model
{
	import com.adobe.cairngorm.CairngormError;
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.model.ModelLocator;
	import com.hxr.cairngormdemo.vo.Num;
	
	[Bindable]
	public class CountModelLocator implements ModelLocator
	{
		public var count:int;
		public var num:Num;
		private static var modelLocator:CountModelLocator;
		
		public static function getInstance():CountModelLocator{
			if(modelLocator==null){
				modelLocator=new CountModelLocator();
			}
			return modelLocator;
		}
	}
}