package com.hxr.flex.as3guide.display
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.geom.Point;
	
//	BlendMode.ADD ("add")：通常用于创建两个图像之间的动画变亮模糊效果。
//	
//	BlendMode.ALPHA ("alpha")：通常用于在背景上应用前景的透明度。（在 GPU 呈现下不支持。）
//	
//	BlendMode.DARKEN ("darken")：通常用于重叠类型。（在 GPU 呈现下不支持。）
//	
//	BlendMode.DIFFERENCE ("difference")：通常用于创建更多变动的颜色。
//	
//	BlendMode.ERASE ("erase")：通常用于使用前景 Alpha 剪掉（擦除）背景的一部分。（在 GPU 呈现下不支持。）
//	
//	BlendMode.HARDLIGHT ("hardlight")：通常用于创建阴影效果。（在 GPU 呈现下不支持。）
//	
//	BlendMode.INVERT ("invert")：用于反转背景。
//	
//	BlendMode.LAYER ("layer")：用于强制为特定显示对象的预构成创建临时缓冲区。（在 GPU 呈现下不支持。）
//	
//	BlendMode.LIGHTEN ("lighten")：通常用于重叠类型。（在 GPU 呈现下不支持。）
//	
//	BlendMode.MULTIPLY ("multiply")：通常用于创建阴影和深度效果。
//	
//	BlendMode.NORMAL ("normal")：用于指定混合图像的像素值覆盖基本图像的像素值。
//	
//	BlendMode.OVERLAY ("overlay")：通常用于创建阴影效果。（在 GPU 呈现下不支持。）
//	
//	BlendMode.SCREEN ("screen")：通常用于创建亮点和镜头眩光。
//	
//	BlendMode.SHADER ("shader")：用于指定用于创建自定义混合效果的 Pixel Bender 着色器。有关使用着色器的详细信息，请参阅使用 Pixel Bender 着色器。（在 GPU 呈现下不支持。）
//	
//	BlendMode.SUBTRACT ("subtract")：通常用于创建两个图像之间的动画变暗模糊效果。

	
	public class PositionTest extends Sprite
	{
		public function PositionTest()
		{
			super();
			
			// Position the shape at the top-left corner of the Stage,  
			// regardless of where its parent is located. 
			
			// Create a Sprite, positioned at x:200 and y:200. 
			var mySprite:Sprite = new Sprite(); 
			mySprite.x = 200; 
			mySprite.y = 200; 
			this.addChild(mySprite); 
			
			// Draw a dot at the Sprite's 0,0 coordinate, for reference. 
			mySprite.graphics.lineStyle(1, 0x000000); 
			mySprite.graphics.beginFill(0x000000); 
			mySprite.graphics.moveTo(0, 0); 
			mySprite.graphics.lineTo(1, 0); 
			mySprite.graphics.lineTo(1, 1); 
			mySprite.graphics.lineTo(0, 1); 
			mySprite.graphics.endFill(); 
			
			// Create the circle Shape instance. 
			var circle:Shape = new Shape(); 
			mySprite.addChild(circle); 
			
			// Draw a circle with radius 50 and center point at x:50, y:50 in the Shape. 
			circle.graphics.lineStyle(1, 0x000000); 
			circle.graphics.beginFill(0xff0000); 
			circle.graphics.drawCircle(50, 50, 50); 
			circle.graphics.endFill(); 
			
			// Move the Shape so its top-left corner is at the Stage's 0, 0 coordinate. 
//			var stagePoint:Point = new Point(0, 0); 
//			var targetPoint:Point = mySprite.globalToLocal(stagePoint); 
//			circle.x = targetPoint.x; 
//			circle.y = targetPoint.y;
		}
		
	}
}