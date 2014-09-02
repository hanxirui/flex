package
{
	import com.hxr.flex.as3guide.array.BasicArray;
	import com.hxr.flex.as3guide.array.MiddleArray;
	import com.hxr.flex.as3guide.date.BasicDate;
	import com.hxr.flex.as3guide.date.ShortTimer;
	import com.hxr.flex.as3guide.display.CustomCircle;
	import com.hxr.flex.as3guide.display.CustomRect;
	import com.hxr.flex.as3guide.display.PositionTest;
	import com.hxr.flex.as3guide.display.ScrollRect;
	import com.hxr.flex.as3guide.json.BasicJson;
	import com.hxr.flex.as3guide.string.BasicString;
	import com.hxr.flex.as3guide.string.MiddleString;
	import com.hxr.flex.as3guide.xml.BasicXML;
	import com.hxr.flex.as3guide.xml.MiddleXML;
	
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	import flash.text.TextField;
	import flash.utils.Timer;
	
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
			
//			var arr:BasicArray = new BasicArray();
//			arr.display();
//			
//			
//			var mArr:MiddleArray = new MiddleArray();
//			mArr.display();
//			
			var circle:CustomCircle = new CustomCircle(20,20,20,0x00FF00);
//			
//			var rect:CustomRect = new CustomRect(20,20,20,0xFF0000);
			this.addChild(circle);		
//			circle.scaleX=30;
//			circle.scaleY=30;		
//			this.addChild(rect);
			
			
//			由于显示对象只有一个父容器，因此只能在一个显示对象容器中添加显示对象的实例。例如，下面的代码说明了显示对象 tf1 只能存在于一个容器中
//			var tf1:TextField = new TextField();			
//			var tf2:TextField = new TextField(); 
//			tf1.name = "text 1"; 
//			tf2.name = "text 2"; 
//			
//			var container1:Sprite = new Sprite(); 
//			var container2:Sprite = new Sprite(); 
//			
//			container1.addChild(tf1); 
//			container1.addChild(tf2); 
//			container2.addChild(tf1); 
//			
//			trace(container1.numChildren); // 1 
//			trace(container1.getChildAt(0).name); // text 2 
//			trace(container2.numChildren); // 1 
//			trace(container2.getChildAt(0).name); // text 1
			
			
//			var myXML:BasicXML = new BasicXML();
//			myXML.dispaly();
			
			
//			var myXML:MiddleXML = new MiddleXML();
//			myXML.dispaly();
			
			
//			var json:BasicJson = new BasicJson();
//			json.display();
			
			
//		    var pt:PositionTest = new PositionTest();
//			this.addChild(pt);
			
	
			
		}
	}
}