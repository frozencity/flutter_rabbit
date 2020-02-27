import 'package:flutter_test/flutter_test.dart';

import 'package:rabbit_converter/rabbit_converter.dart';

void main() {

  String text = 'ယေဓမ္မာ ဟေတုပ္ပဘဝါ တေသံ ဟေတုံ တထာဂတော အာဟ တေသဉ္စ ယောနိရောဓေါ ဧဝံ ဝါဒီ မဟာသမဏော။';
  String zawgyiText = Rabbit.uni2zg(text);
  String unicodeText = Rabbit.zg2uni(zawgyiText);

  print(zawgyiText);
  print(unicodeText);

  expect(Rabbit.uni2zg(text),'ေယဓမၼာ ေဟတုပၸဘဝါ ေတသံ ေဟတုံ တထာဂေတာ အာဟ ေတသၪၥ ေယာနိေရာေဓါ ဧဝံ ဝါဒီ မဟာသမေဏာ။');
  expect(Rabbit.zg2uni(zawgyiText),text);

}
