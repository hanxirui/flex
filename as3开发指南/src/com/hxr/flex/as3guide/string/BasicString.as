package com.hxr.flex.as3guide.string
{
	public class BasicString
	{
		public function BasicString()
		{
		}
		
		public function display():void{
			var str:String = "hello world!"; 
			for (var i:int = 0; i < str.length; i++) 
			{ 
				trace(str.charAt(i), "-", str.charCodeAt(i)); 
			}
			
			var myStr:String = String.fromCharCode(104,101,108,108,111,32,119,111,114,108,100,33); 
			// Sets myStr to "hello world!"
			trace(myStr);
			var str1:String = "Apple"; 
			var str2:String = "apple"; 
			if (str1 < str2) 
			{ 
				trace("A < a, B < b, C < c, ..."); 
			}
			trace("A" < "B"); // true 
			trace("A" < "a"); // true  
			trace("Ab" < "az"); // true  
			trace("abc" < "abza"); // true
			var str1:String = "1"; 
			var str1b:String = "1"; 
			var str2:String = "2"; 
			trace(str1 == str1b); // true 
			trace(str1 == str2); // false 
			var total:uint = 1; 
//			trace(str1 == total); // true
			var n:Number = 99.47; 
			var str:String = n.toString(); 
			// str == "99.47"
			var str1:String = "green"; 
			var str2:String = "ish"; 
			var str3:String = str1 + str2; // str3 == "greenish"
			trace(str3);
			
			var str1:String = "Bonjour"; 
			var str2:String = "from"; 
			var str3:String = "Paris"; 
			var str4:String = str1.concat(" ", str2, " ", str3); 
			// str4 == "Bonjour from Paris"
			trace(str4);
			
			trace("Total: $" + 4.55 + 1.45); // output: Total: $4.551.45 
			trace("Total: $" + (4.55 + 1.45)); // output: Total: $6
		}
	}
}