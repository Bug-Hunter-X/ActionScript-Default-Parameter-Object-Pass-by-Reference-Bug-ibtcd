function myFunction(param1:String, param2:Object = null):void {
  // create a copy of the default object to avoid pass-by-reference issues
  var param2Copy:Object;
  if (param2 == null) {
    param2Copy = {value: 10};
  } else {
    param2Copy = {value: param2.value}; // create a copy
  }
  trace(param1);
  trace(param2Copy.value);
  param2Copy.value = 20; //This will NOT change the default value
}

myFunction("Hello", {value: 20}); // Output: Hello 20
myFunction("World");    // Output: World 10