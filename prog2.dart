void main() {
  int age = 28;
  double height = 5.10;
  String name = "Ajay";
  bool isStudent = false;
  List<String> hobbies = ["Reading", "Coding", "Traveling"];

  print("Name: $name");
  print("Age: $age years");
  print("Height: $height feet");
  print("Is Student: $isStudent");
  print("Hobbies: $hobbies");


  print("\nInformation about $name:");
  print("Name: $name");
  print("Age: $age");
  print("Height: $height feet");
  print("Student Status: ${isStudent ? 'Yes' : 'No'}");
  print("Favorite Hobbies: ${hobbies.join(', ')}");
}
