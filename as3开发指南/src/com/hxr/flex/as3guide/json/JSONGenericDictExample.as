package com.hxr.flex.as3guide.json
{
	public class JSONGenericDictExample
	{
		static var revivableObjects = []; 
		static var nextId = 10000; 
		public var id; 
		public var dname:String; 
		public var birthday; 
		
		public function JSONGenericDictExample(name, birthday) { 
			revivableObjects[nextId] = this; 
			this.id       = "id_class_JSONGenericDictExample_" + nextId; 
			this.dname     = name; 
			this.birthday = birthday; 
			nextId++; 
		} 
		public function toString():String { return this.dname; } 
		public static function revive(id:String):JSONGenericDictExample { 
			var r:RegExp = /^id_class_JSONGenericDictExample_([0-9]*)$/; 
			var res = r.exec(id); 
			return JSONGenericDictExample.revivableObjects[res[1]]; 
		} 
	
	}
}