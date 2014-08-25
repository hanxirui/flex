package com.hxr.flex.as3guide.string
{
	public class MiddleString
	{
		public function MiddleString()
		{
		}
		
		public function dispaly():void{
			//第一个参数是给定字符串中起始字符的位置。不过，
			//在 substr() 方法中，第二个参数是要返回的子字符串的长度，
			//而在 substring() 方法中，第二个参数是子字符串的结尾 处字符的位置（该字符未包含在返回的字符串中）。
			var str:String = "Hello from Paris, Texas!!!"; 
			trace(str.substr(11,15)); // output: Paris, Texas!!! 
			trace(str.substring(11,15)); // output: Pari
			
			
//			slice() 方法与 substring() 方法的工作方式类似。当指定两个非负整数作为参数时，
//			其运行方式将完全一样。但是，slice() 方法可以使用负整数作为参数，此时字符位置将从字符串末尾开始向前算起，如下例所示：
			var str:String = "Hello from Paris, Texas!!!"; 
			trace(str.slice(11,15)); // output: Pari 
			trace(str.slice(-3,-1)); // output: !! 
			trace(str.slice(-3,26)); // output: !!! 
			trace(str.slice(-3,str.length)); // output: !!! 
			trace(str.slice(-8,-3)); // output: Texas
		
//			indexOf() 方法区分大小写。
			var str:String = "The moon, the stars, the sea, the land"; 
			trace(str.indexOf("the")); // output: 10
			
			
//			lastIndexOf() 方法在字符串中查找子字符串的最后一个匹配项：
			
			var str:String = "The moon, the stars, the sea, the land" 
			trace(str.lastIndexOf("the")); // output: 30
			
//			如果为 lastIndexOf() 方法提供了第二个参数，搜索将从字符串中的该索引位置反向（从右到左）进行：
			
			var str:String = "The moon, the stars, the sea, the land" 
			trace(str.lastIndexOf("the", 29)); // output: 21
			
			
			
			var queryStr:String = "first=joe&last=cheng&title=manager&StartDate=3/6/65"; 
			var params:Array = queryStr.split("&", 2); // params == ["first=joe","last=cheng"]
			
			
//			search() 方法返回与给定模式相匹配的第一个子字符串的索引位置，如下例所示：
			
			var str:String = "The more the merrier."; 
			// (This search is case-sensitive.) 
			trace(str.search("the")); // output: 9 
			
//			您还可以使用正则表达式定义要匹配的模式，如下例所示：
//			trace() 方法的输出为 0，因为字符串中第一个字符的索引位置为 0。在正则表达式中设置了 i 标志，因此搜索时不区分大小写。
			var pattern:RegExp = /the/i; 
			var str:String = "The more the merrier."; 
			trace(str.search(pattern)); // 0
			
			
//			该表达式匹配被双引号引起来的字符串：
			
			var pattern:RegExp = /"[^"]*"/; 
			var str:String = "The \"more\" the merrier."; 
			trace(str.search(pattern)); // output: 4 
			
			str = "The \"more the merrier."; 
			trace(str.search(pattern)); // output: -1  
			// (Indicates no match, since there is no closing double quotation mark.)
			
//			match() 方法的工作方式与此类似。它搜索一个匹配的子字符串。但是，如果在正则表达式模式中使用了全局标志（如下例所示），match() 将返回一个包含匹配子字符串的数组：
			
			var str:String = "bob@example.com, omar@example.org"; 
			var pattern:RegExp = /\w*@\w*\.[org|com]+/g; 
			var results:Array = str.match(pattern);
			
			var str:String = "She sells seashells by the seashore."; 
			var pattern:RegExp = /sh/gi; 
			trace(str.replace(pattern, "sch")); //sche sells seaschells by the seaschore. 
			
//			下面说明了如何使用 $2 和 $1 替换代码，它们分别表示匹配的第一个和第二个捕获组：
			
			var str:String = "flip-flop"; 
			var pattern:RegExp = /(\w+)-(\w+)/g; 
			trace(str.replace(pattern, "$2-$1")); // flop-flip
			
//			也可以使用函数作为 replace() 方法的第二个参数。匹配的文本将被函数的返回值替换。
			
			var str:String = "Now only $9.95!"; 
			var price:RegExp = /\$([\d,]+.\d+)+/i; 
			trace(str.replace(price, usdToEuro)); 
			
			function usdToEuro(matchedSubstring:String, capturedMatch1:String,index:int,str:String):String 
			{ 
				var usd:String = capturedMatch1; 
				usd = usd.replace(",", ""); 
				var exchangeRate:Number = 0.853690; 
				var euro:Number = parseFloat(usd) * exchangeRate; 
				const euroSymbol:String = String.fromCharCode(8364); 
				return euro.toFixed(2) + " " + euroSymbol; 
			}
			
//			在使用函数作为 replace() 方法的第二个形参时，将向该函数传递如下实参：
//			
//			字符串的匹配部分。
//			
//			任何捕获的括号组匹配项。按这种方式传递的参数数目因括号匹配项的数目而异。您可以通过检查函数代码中的 arguments.length - 3 来确定括号匹配项的数目。
//				
//				字符串中匹配开始的索引位置。
//				
//				完整的字符串。
			
			
			
			var str:String = "Dr. Bob Roberts, #9." 
			trace(str.toLowerCase()); // dr. bob roberts, #9. 
			trace(str.toUpperCase()); // DR. BOB ROBERTS, #9.
			trace(str);
			
		}
	}
}