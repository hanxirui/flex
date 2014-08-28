package com.hxr.flex.as3guide.json
{
	import flash.utils.Dictionary; 
	import flash.utils.ByteArray; 
	
	// For this extension of dictionary, we serialize the contents of the 
	// dictionary by using toJSON 
	public final class JSONDictionaryExtnExample extends Dictionary { 
		public function toJSON(k):* { 
			var contents = {}; 
			for (var a in this) { 
				contents[a.id] = this[a]; 
			} 
			
			// We also wrap the contents in an object so that we can 
			// identify it by looking for the marking property "class E" 
			// while in the midst of JSON.parse. 
			return {"class JSONDictionaryExtnExample": contents}; 
		} 
		
		// This is just here for debugging and for illustration 
		public function toString():String { 
			var retval = "[JSONDictionaryExtnExample <"; 
			var printed_any = false; 
			for (var k in this) { 
				retval += k.toString() + "=" + 
					"[e="+this[k].earnings + 
					",v="+this[k].violations + "], " 
				printed_any = true; 
			} 
			if (printed_any) 
				retval = retval.substring(0, retval.length-2); 
			retval += ">]" 
			return retval; 
		} 
	} 
}