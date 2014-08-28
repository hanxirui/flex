package com.hxr.flex.as3guide.xml
{
	public class MiddleXML
	{
		public function MiddleXML()
		{
		}
		
		public function dispaly():void{
			var x:XML =  
				<employeeList> 
					<employee id="347"> 
						<lastName>Zmed</lastName> 
						<firstName>Sue</firstName> 
						<position>Data analyst</position> 
					</employee> 
					<employee id="348"> 
						<lastName>McGee</lastName> 
						<firstName>Chuck</firstName> 
						<position>Jr. data analyst</position> 
					</employee> 
				</employeeList>
			
//			以下表达式都是有效的：
			
			trace(x.employee.(lastName == "McGee")) //— 这是第二个 employee 节点。
			
			trace(x.employee.(lastName == "McGee").firstName) //— 这是第二个 employee 节点的 firstName 属性。
			
			trace(x.employee.(lastName == "McGee").@id) //— 这是第二个 employee 节点的 id 属性的值。
			
			trace(x.employee.(@id == 347)) //— 第一个 employee 节点。
			
			trace(x.employee.(@id == 347).lastName) //— 这是第一个 employee 节点的 lastName 属性。
			
			trace(x.employee.(@id > 300)) //— 这是具有两个 employee 属性的 XMLList。
			
			trace(x.employee.(position.toString().search("analyst") > -1)) //— 这是具有两个 position 属性的 XMLList。
		
		
		}
	}
}