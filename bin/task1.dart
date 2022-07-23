import 'dart:io';

void main(List<String> arguments) {
  bool flag = true;
  List arrodd = [];
  List arreven = [];
  while (flag) {
    print("Write the number for your option :");
    print("1:Stop write exit");
    print("2:Check even or odd number");
    int x = int.parse(stdin.readLineSync()!);
    switch (x) {
      case 1:
        {
          print("It is Stopped.");
          flag = false;
        }
        break;
      case 2:
        {
          print("Your number is:");
          int y = int.parse(stdin.readLineSync()!);
          if (y % 2 != 0) {
            arrodd.add(y);
            print("Number is odd ");
            print("Odd List :");
            print(arrodd);
          } else {
            arreven.add(y);
            print("Number is even ");
            print("Even List :");
            print(arreven);
          }
        }
        break;
      default:
        {
          print("Invalid choice please try again ");
        }
        break;
    }
  }
}
