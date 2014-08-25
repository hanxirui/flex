package
{
	import com.hxr.flex.as3guide.array.BasicArray;
	import com.hxr.flex.as3guide.array.MiddleArray;
	import com.hxr.flex.as3guide.date.BasicDate;
	import com.hxr.flex.as3guide.date.ShortTimer;
	import com.hxr.flex.as3guide.string.BasicString;
	import com.hxr.flex.as3guide.string.MiddleString;
	
	import flash.display.Sprite;
	
	public class Main extends Sprite
	{
		public function Main()
		{
//			var basicDate:BasicDate = new BasicDate();
//			basicDate.dispaly();
//			
//			var shortTimer:ShortTimer = new ShortTimer();
//			
//			var str:BasicString = new BasicString();
//			str.display();
			
//			var mStr:MiddleString = new MiddleString();
//			mStr.dispaly();
			
			var arr:BasicArray = new BasicArray();
			arr.display();
			
			
			var mArr:MiddleArray = new MiddleArray();
			mArr.display();
			
		}
	}
}