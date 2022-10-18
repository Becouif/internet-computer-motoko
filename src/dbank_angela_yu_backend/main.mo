import Debug "mo:base/Debug";




actor Dbank{
  // create a changeable value 
  var currentValue = 300;
  // update value 
  currentValue:= 100;
  // create and immuatable value like const in js 
  let id = 545718728;


// console.log or print in motoko langauage 
  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id))

  func topUp(){
    currentValue += 1;
    Debug.print(debug_show(currentValue))

  };

  topUp();

  // create a function that can be called out the actor 
  public func topDown(){
    Debug.print(debug_show("public function"))
  }
}