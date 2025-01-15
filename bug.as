function myFunction(param1:String, param2:int = 10):void {
  trace(param1);
  trace(param2);
}

myFunction("Hello", 20); // Output: Hello 20
myFunction("World");    // Output: World 10

//The bug is that if the default value is an object, it will be passed by reference and not by value.
function myFunction(param1:String, param2:Object = {value: 10}):void {
  trace(param1);
  trace(param2.value);
  param2.value = 20; //This will change the default value
}

myFunction("Hello", {value: 20}); // Output: Hello 20
myFunction("World");    // Output: World 20 (BUG: default value is modified)