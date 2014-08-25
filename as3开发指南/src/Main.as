package
{
	import com.hxr.flex.as3guide.date.BasicDate;
	import com.hxr.flex.as3guide.date.ShortTimer;
	import com.hxr.flex.as3guide.string.BasicString;
	
	import flash.display.Sprite;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			var basicDate:BasicDate = new BasicDate();
			basicDate.dispaly();
			
			var shortTimer:ShortTimer = new ShortTimer();
			
			var str:BasicString = new BasicString();
			str.display();
		}
	}
}