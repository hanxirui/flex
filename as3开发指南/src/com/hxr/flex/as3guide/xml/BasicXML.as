package com.hxr.flex.as3guide.xml
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class BasicXML
	{
		public function BasicXML()
		{
		}
		
		public function dispaly():void{
			var myXML:XML =  
				<order> 
					<item id='1'> 
						<menuName>burger</menuName> 
						<price>3.95</price> 
					</item> 
					<item id='2'> 
						<menuName>fries</menuName> 
						<price>1.45</price> 
					</item> 
				</order>;
			
			trace(myXML.item[0].menuName); // Output: burger 
			trace(myXML.item.(@id==2).menuName); // Output: fries 
			trace(myXML.item.(menuName=="burger").price); // Output: 3.95
			
			var newItem:XML =  
				<item id="3"> 
					<menuName>medium cola</menuName> 
					<price>1.25</price> 
				</item> 
			
			myXML.appendChild(newItem);
			trace(myXML);
			
			
//			使用 @ 和 . 运算符不仅可以读取数据，还可以分配数据，如下所示：
				
				myXML.item[0].menuName="regular burger"; 
			myXML.item[1].menuName="small fries"; 
			myXML.item[2].menuName="medium cola"; 
			
			myXML.item.(menuName=="regular burger").@quantity = "2"; 
			myXML.item.(menuName=="small fries").@quantity = "2"; 
			myXML.item.(menuName=="medium cola").@quantity = "2";
			
//			使用 for 循环可以循环访问 XML 的节点，如下所示：
			
			var total:Number = 0; 
			for each (var property:XML in myXML.item) 
			{ 
				var q:int = Number(property.@quantity); 
				var p:Number = Number(property.price); 
				var itemTotal:Number = q * p; 
				total += itemTotal; 
				trace(q + " " + property.menuName + " $" + itemTotal.toFixed(2)) 
			} 
			trace("Total: $", total.toFixed(2));
			
//			如下面的代码片断所示，还可以使用 new 构造函数从包含 XML 数据的字符串创建 XML 对象的实例：
			
			var str:String = "<order><item id='1'><menuName>burger</menuName>" 
				+ "<price>3.95</price></item></order>"; 
			var myXML:XML = new XML(str);
			trace(myXML);
			
//			如果字符串中的 XML 数据格式有误（例如缺少结束标签），则会出现运行时错误。
//			
//			还可以将数据按引用（从其他变量）传递到 XML 对象，如下面的示例所示：
			
			var tagname:String = "item";  
			var attributename:String = "id";  
			var attributevalue:String = "5";  
			var content:String = "Chicken";  
			var x:XML = <{tagname} {attributename}={attributevalue}>{content}</{tagname}>;  
			trace(x.toXMLString()) 
			// Output: <item id="5">Chicken</item>
			
//			要从 URL 加载 XML 数据，请使用 URLLoader 类，如下面的示例所示：
			var externalXML:XML; 
			var loader:URLLoader = new URLLoader(); 
			var request:URLRequest = new URLRequest("assets/xmlFile.xml"); 
			loader.load(request); 
			loader.addEventListener(Event.COMPLETE, onComplete); 
			
			function onComplete(event:Event):void 
			{ 
				var loader:URLLoader = event.target as URLLoader; 
				if (loader != null) 
				{ 
					externalXML = new XML(loader.data); 
					trace(externalXML.toXMLString()); 
				} 
				else 
				{ 
					trace("loader is not a URLLoader!"); 
				} 
			}
			
			
			
//			使用 prependChild() 方法或 appendChild() 方法可在 XML 对象属性列表的开头或结尾添加属性，如下面的示例所示：
			
			var x1:XML = <p>Line 1</p>  
			var x2:XML = <p>Line 2</p>  
			var x:XML = <body></body> 
			x = x.appendChild(x1); 
			x = x.appendChild(x2); 
			x = x.prependChild(<p>Line 0</p>); 
			trace(x);
			// x == <body><p>Line 0</p><p>Line 1</p><p>Line 2</p></body>
			
//			使用 insertChildBefore() 方法或 insertChildAfter() 方法在指定属性之前或之后添加属性，如下所示：
			
			var x:XML =  
				<body> 
					<p>Paragraph 1</p>  
					<p>Paragraph 2</p> 
				</body> 
			var newNode:XML = <p>Paragraph 1.5</p>  
			x = x.insertChildAfter(x.p[0], newNode) 
			x = x.insertChildBefore(x.p[2], <p>Paragraph 1.75</p>)
			trace(x);
//			如下面的示例所示，还可以使用大括号运算符（{ 和 }）在构造 XML 对象时按引用（从其他变量）传递数据：
			
			var ids:Array = [121, 122, 123];  
			var names:Array = [["Murphy","Pat"], ["Thibaut","Jean"], ["Smith","Vijay"]] 
			var x:XML = new XML("<employeeList></employeeList>"); 
			
			for (var i:int = 0; i < 3; i++) 
			{ 
				var newnode:XML = new XML();  
				newnode = 
					<employee id={ids[i]}> 
						<last>{names[i][0]}</last> 
						<first>{names[i][1]}</first> 
					</employee>; 
				
				x = x.appendChild(newnode) 
			}
			trace(x);
//			可以使用 = 运算符将属性指定给 XML 对象，如下所示：
			
			var x:XML =  
				<employee> 
					<lastname>Smith</lastname> 
				</employee> 
			x.firstname = "Jean"; 
			x.@id = "239";
			trace(x);

			
//			可以使用 + 和 += 运算符连接 XMLList 对象：
			
			var x1:XML = <a>test1</a>  
			var x2:XML = <b>test2</b>  
			var xList:XMLList = x1 + x2; 
			xList += <c>test3</c>
			
            trace(xList);
				

		}
	}
}