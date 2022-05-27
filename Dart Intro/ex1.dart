double addWithScale(double a, double b, [double c = 1]) {
  return c * (a + b);
}

void main() async {
  var age = 10;
  //int width = 50;
  //double height = 1.95;
  //bool isSmart = true;

  //print(age.toString() +
  //    height.toString() +
  //    isSmart.toString() +
  //    width.toString());

  //if (age < 10) {
  //  print("Under age");
  //} else if (age < 18)
  //  print("Teenager");
  //else {
  //  print("old");
  //}

  String ageState = (age < 18) ? "Under age" : "Old enough";
  print(ageState);

  //Switch case
  //switch (ageState) {
  //  case "Under age":
  //    print(age);
  //    break;
  //  case "Old enough":
  //    print(age);
  //    break;
  //  default:
  //    print("age not specified.");
  //}

  //Iteration
  List<int> nums = [1, 2, 3, 4, 5];
  //for (var num in nums) print(++num);
  int tot = 0;
  for (int i = 0; i < nums.length; i++) tot += nums[i];
  print(tot);
  print(addWithScale(2, 4, 3));

  //Functions
  Function square = (a) => a * a;
  print("");

  //Asynchronous
  await Future.delayed(
      Duration(seconds: 5), () => print("a few moments later"));

  Future.delayed(Duration(seconds: 3), () => print("another future delayed"));

  print(square(2));
  //If two delays exist and the 2nd one needs the ouput from the first one
}
