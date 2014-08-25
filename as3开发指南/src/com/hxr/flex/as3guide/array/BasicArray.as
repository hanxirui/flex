package com.hxr.flex.as3guide.array
{
	public class BasicArray
	{
		public function BasicArray()
		{
		}
		public function display():void{
			var oddNumbers:Array = [1, 3, 5, 7, 9, 11]; 
			var len:uint = oddNumbers.length; 
			for (var i:uint = 0; i < len; i++) 
			{ 
				trace("oddNumbers[" + i.toString() + "] = " + oddNumbers[i].toString()); 
			}
		
		
			var names:Array = new Array(3); 
			trace(names.length); // output: 3 
			trace(names[0]); // output: undefined 
			trace(names[1]); // output: undefined 
			trace(names[2]); // output: undefined
			
			
			var names:Array = new Array("John", "Jane", "David"); 
			trace(names.length); // output: 3 
			trace(names[0]); // output: John 
			trace(names[1]); // output: Jane 
			trace(names[2]); // output: David
			
			var friends:Vector.<String> = Vector.<String>(["Bob", "Larry", "Sarah"]);
			trace(friends);
			
			var numbers:Vector.<int> = Vector.<int>(["1.5", "17", "Waffles"]); 
			trace(numbers); // output: 1,17,0
			
			
//			push() 方法用于在数组末尾添加一个或多个元素。换言之，使用 push() 方法在数组中插入的最后一个元素将具有最大索引号。unshift() 方法用于在数组开头插入一个或多个元素，并且始终在索引号 0 处插入。splice() 方法用于在数组中的指定索引处插入任意数目的项目。
			var planets:Array = new Array(); 
			planets.push("Mars"); // array contents: Mars 
			planets.unshift("Mercury"); // array contents: Mercury,Mars 
			planets.splice(1, 0, "Venus", "Earth"); 
			trace(planets); // array contents: Mercury,Venus,Earth,Mars
			
			var oceans:Array = ["Victoria", "Pacific", "Aral", "Superior", "Indian", "Huron"]; 
			oceans.splice(2, 2, "Arctic", "Atlantic"); // replaces Aral and Superior 
			oceans.pop(); // removes Huron 
			oceans.shift(); // removes Victoria 
			trace(oceans);// output: Pacific,Arctic,Atlantic,Indian
			
			
			var oceans:Array = ["Arctic", "Pacific", "Victoria", "Indian", "Atlantic"]; 
			delete oceans[2]; 
			trace(oceans);// output: Arctic,Pacific,,Indian,Atlantic 
			trace(oceans[2]); // output: undefined 
			trace(oceans.length); // output: 5
			
			
			var oceans:Array = ["Arctic", "Pacific", "Victoria", "Aral", "Superior"]; 
			oceans.length = 2; 
			trace(oceans); // output: Arctic,Pacific
			
			var oceans:Array = ["Arctic", "Atlantic", "Indian", "Pacific"]; 
			oceans.reverse(); 
			trace(oceans); // output: Pacific,Indian,Atlantic,Arctic
			
			
			var poets:Array = new Array(); 
			poets.push({name:"Angelou", born:"1928"}); 
			poets.push({name:"Blake", born:"1757"}); 
			poets.push({name:"cummings", born:"1894"}); 
			poets.push({name:"Dante", born:"1265"}); 
			poets.push({name:"Wang", born:"701"});
			poets.sortOn("born", Array.NUMERIC); 
			 
			for (var j:int = 0; j < poets.length; ++j) 
			{ 
				trace(poets[j].name, poets[j].born); 
			} 
			
			
			
//			Array 和 Vector 类的四种方法 concat()、join()、slice() 和 toString() 均可用于查询数组的信息，而不修改数组。concat() 和 slice() 方法返回新数组；而 join() 和 toString() 方法返回字符串。concat() 方法将新数组和元素列表作为参数，并将其与现有数组结合起来创建新数组。slice() 方法有两个名为 startIndex 和 endIndex 的参数，并返回一个新数组，新数组中包含从现有数组“分离”的元素副本。分离从 startIndex 处的元素开始，到 endIndex 处的前一个元素结束。值得强调的是，endIndex 处的元素不包括在返回值中。
//			
//			以下示例通过 concat() 和 slice() 方法，使用其他数组的元素创建新数组：
			
			var array1:Array = ["alpha", "beta"]; 
			var array2:Array = array1.concat("gamma", "delta"); 
			trace(array2); // output: alpha,beta,gamma,delta 
			
			var array3:Array = array1.concat(array2); 
			trace(array3); // output: alpha,beta,alpha,beta,gamma,delta 
			
			var array4:Array = array3.slice(2,5); 
			trace(array4); // output: alpha,beta,gamma
			
//			可以使用 join() 和 toString() 方法查询数组，并将其内容作为字符串返回。如果 join() 方法没有使用参数，则这两个方法的行为相同，它们都返回一个字符串，其中包含数组中所有元素的逗号分隔列表。与 toString() 方法不同，join() 方法接受名为 delimiter 的参数；可以使用此参数，选择要用作返回字符串中各个元素之间分隔符的符号。
//			
//			下面的示例创建名为 rivers 的 Array，并调用 join() 和 toString() 以便采用字符串形式返回该 Array 中的值。toString() 方法用于返回以逗号分隔的值 (riverCSV)；而 join() 方法用于返回以 + 字符分隔的值。
			
			var rivers:Array = ["Nile", "Amazon", "Yangtze", "Mississippi"]; 
			var riverCSV:String = rivers.toString(); 
			trace(riverCSV); // output: Nile,Amazon,Yangtze,Mississippi 
			var riverPSV:String = rivers.join("+"); 
			trace(riverPSV); // output: Nile+Amazon+Yangtze+Mississippi
			
//			对于 join() 方法，应注意的一个问题是，无论为主数组元素指定的分隔符是什么，为嵌套 Array 或 Vector 实例返回的值始终以逗号作为分隔符，如下面的示例所示：
			
			var nested:Array = ["b","c","d"]; 
			var letters:Array = ["a",nested,"e"];  
			trace(letters);
			var joined:String = letters.join("+"); 
			trace(joined); // output: a+b,c,d+e
			

		}
	}
}