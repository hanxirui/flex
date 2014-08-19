package com.hxr.cairngormdemo.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.hxr.cairngormdemo.command.CountCommand;
	
	public class CountFrontControl extends FrontController
	{
		public static var COUNT_EVENT:String = "counting";
		public function CountFrontControl()
		{
			this.addCommand(COUNT_EVENT,CountCommand);
		}
	}
}