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
	import com.hxr.flex.as3guide.geom.BasicBessel;
	import com.hxr.flex.as3guide.geom.BasicMatrix;
	import com.hxr.flex.as3guide.geom.BasicPoint;
	import com.hxr.flex.as3guide.geom.BasicTriangle;
	import com.hxr.flex.as3guide.json.BasicJson;
	import com.hxr.flex.as3guide.string.BasicString;
	import com.hxr.flex.as3guide.string.MiddleString;
	import com.hxr.flex.as3guide.xml.BasicXML;
	import com.hxr.flex.as3guide.xml.MiddleXML;
	
	import flash.display.Shape;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.ColorTransform;
	import flash.geom.Rectangle;
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
//			var circle:CustomCircle = new CustomCircle(20,20,20,0x00FF00);
//						this.addChild(circle);		
			//			circle.scaleX=30;
			//			circle.scaleY=30;	
//			var rect:CustomRect = new CustomRect(20,20,20,0xFF0000);
	
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
			
//	        var p:BasicPoint = new BasicPoint();
//			p.display();
			
//			var rect1:Rectangle = new Rectangle(0, 0, 100, 100); 
//			trace(rect1);
//			
//			var circle:Shape = new Shape(); 
//			circle.graphics.lineStyle(2, 0xFF0000); 
//			circle.graphics.drawCircle(250, 250, 100); 
//			addChild(circle); 
//			var circleBounds:Rectangle = circle.getBounds(stage); 
//			var target1:Rectangle = new Rectangle(0, 0, 100, 100); 
//			trace(circleBounds.intersects(target1)); // false 
//			var target2:Rectangle = new Rectangle(0, 0, 300, 300); 
//			trace(circleBounds.intersects(target2)); // true
			
//			var matrix:BasicMatrix = new BasicMatrix(0, 0, 60, 60);
//			this.addChild(matrix);
//			
//			var triangle:BasicTriangle = new BasicTriangle();	
//			this.addChild(triangle.getTriangle());
			
//			var bessel:BasicBessel = new BasicBessel();
//			this.addChild(bessel.getBessel());
			
			var squareSize:uint = 100; 
			var square:Shape = new Shape(); 
			square.graphics.beginFill(0xFF0000, 0.5); 
			square.graphics.drawRect(0, 0, squareSize, squareSize); 
			square.graphics.beginFill(0x00FF00, 0.5); 
			square.graphics.drawRect(200, 0, squareSize, squareSize); 
			square.graphics.beginFill(0x0000FF, 0.5); 
			square.graphics.drawRect(400, 0, squareSize, squareSize); 
			square.graphics.endFill(); 
			this.addChild(square);
//			在 Sprite 或 MovieClip 对象中，使用 graphics 属性创建的绘制内容始终出现在该对象包含的所有子级显示对象的后面。另外，graphics 属性内容不是单独的显示对象，因此，它不会出现在 Sprite 或 MovieClip 对象的子级列表中。例如，以下 Sprite 对象使用其 graphics 属性来绘制圆，并且其子级显示对象列表中包含一个 TextField 对象：
//			请注意，TextField 将出现在使用 graphics 对象绘制的圆的上面。
			var mySprite:Sprite = new Sprite(); 
			mySprite.graphics.beginFill(0xFFCC00); 
			mySprite.graphics.drawCircle(30, 30, 30); 
			var label:TextField = new TextField(); 
			label.width = 200; 
			label.text = "They call me mellow yellow..."; 
			label.x = 20; 
			label.y = 20; 
			mySprite.addChild(label); 
			this.addChild(mySprite);
		}
	}
}