package com.hxr.flex.as3guide.json
{
	public class BasicJson
	{
		public function BasicJson()
		{
		}
		
		public function display():void{
			var a_bob1:JSONGenericDictExample = new JSONGenericDictExample("Bob", new Date(Date.parse("01/02/1934"))); 
			var a_bob2:JSONGenericDictExample = new JSONGenericDictExample("Bob", new Date(Date.parse("05/06/1978"))); 
			var a_jen:JSONGenericDictExample = new JSONGenericDictExample("Jen", new Date(Date.parse("09/09/1999"))); 
			
			var e = new JSONDictionaryExtnExample(); 
			e[a_bob1] = {earnings: 40, violations: 2}; 
			e[a_bob2] = {earnings: 10, violations: 1}; 
			e[a_jen]  = {earnings: 25, violations: 3}; 
			
			trace("JSON.stringify(e): " + JSON.stringify(e)); // {"class JSONDictionaryExtnExample": 
			//{"id_class_JSONGenericDictExample_10001": 
			//{"earnings":10,"violations":1}, 
			//"id_class_JSONGenericDictExample_10002": 
			//{"earnings":25,"violations":3}, 
			//"id_class_JSONGenericDictExample_10000": 
			// {"earnings":40,"violations":2}}} 
			
			var e_result = JSON.stringify(e); 
			
			var e1 = new JSONDictionaryExtnExample(); 
			var e2 = new JSONDictionaryExtnExample(); 
			
			// It's somewhat easy to convert the string from JSON.stringify(e) back 
			// into a dictionary (turn it into an object via JSON.parse, then loop 
			// over that object's properties to construct a fresh dictionary). 
			// 
			// The harder exercise is to handle situations where the dictionaries 
			// themselves are nested in the object passed to JSON.stringify and 
			// thus does not occur at the topmost level of the resulting string. 
			// 
			// (For example: consider roundtripping something like 
			//   var tricky_array = [e1, [[4, e2, 6]], {table:e3}] 
			// where e1, e2, e3 are all dictionaries.  Furthermore, consider 
			// dictionaries that contain references to dictionaries.) 
			// 
			// This parsing (or at least some instances of it) can be done via 
			// JSON.parse, but it's not necessarily trivial.  Careful consideration 
			// of how toJSON, replacer, and reviver can work together is 
			// necessary. 
			
			var e_roundtrip = 
				JSON.parse(e_result, 
					// This is a reviver that is focused on rebuilding JSONDictionaryExtnExample objects. 
					function (k, v) { 
						if ("class JSONDictionaryExtnExample" in v) { // special marker tag; 
							//see JSONDictionaryExtnExample.toJSON(). 
							var e = new JSONDictionaryExtnExample(); 
							var contents = v["class JSONDictionaryExtnExample"]; 
							for (var i in contents) { 
								// Reviving JSONGenericDictExample objects from string 
								// identifiers is also special; 
								// see JSONGenericDictExample constructor and 
								// JSONGenericDictExample's revive() method. 
								e[JSONGenericDictExample.revive(i)] = contents[i]; 
							} 
							return e; 
						} else { 
							return v; 
						} 
					}); 
			
			trace("// == Here is an extended Dictionary that has been round-tripped  =="); 
			trace("// == Note that we have revived Jen/Jan during the roundtrip.    =="); 
			trace("e:           " + e); //[JSONDictionaryExtnExample <Bob=[e=40,v=2], Bob=[e=10,v=1], 
			//Jen=[e=25,v=3]>] 
			trace("e_roundtrip: " + e_roundtrip); //[JSONDictionaryExtnExample <Bob=[e=40,v=2], 
			//Bob=[e=10,v=1], Jen=[e=25,v=3]>] 
			trace("Is e_roundtrip a JSONDictionaryExtnExample? " + (e_roundtrip is JSONDictionaryExtnExample)); //true 
			trace("Name change: Jen is now Jan"); 
			a_jen.dname = "Jan" 
			
			trace("e:           " + e); //[JSONDictionaryExtnExample <Bob=[e=40,v=2], Bob=[e=10,v=1], 
			//Jan=[e=25,v=3]>] 
			trace("e_roundtrip: " + e_roundtrip); //[JSONDictionaryExtnExample <Bob=[e=40,v=2], 
			//Bob=[e=10,v=1], Jan=[e=25,v=3]>] 
			
		}
	}
}