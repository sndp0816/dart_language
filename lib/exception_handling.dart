void main() {
  //* truncating division

  int result = 10 ~/ 3;
  //10/3 --> 3.33 --> 3

  print(result);
  print(10/0);

  //! why we use try catch block

  //try block is used to catch the error
  //catch block is used to handle the error
  //finally block is always execute

  //if you haven't implemnet the try catch block then the program will crash or stuck in the middle on anywhere

  try{
    print(10~/0);
  }catch(e){
    print("You found an error");
    print(e.toString());
  }finally{
    print("Program completed");
  }
}
