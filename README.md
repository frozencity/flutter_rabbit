# flutter_rabbit

Rabbit Converter package for Flutter. This is a wrapper for Rabbit Converter.

##Features
- Converts from ZawGyi to Myanmar Unicode.
- Converts from Myanmar Unicode to ZawGyi.

##Usage

You must add the library as a dependency to your project.
```yaml
dependencies:
 rabbit_converter: ^0.0.1
```

You should then run `flutter packages get`

After that, import the package in your dart file.

```dart
import 'package:rabbit_converter/rabbit_converter.dart';
```

Simply call the function to convert the string.
```dart
  String text = 'ယေဓမ္မာ ဟေတုပ္ပဘဝါ တေသံ ဟေတုံ တထာဂတော အာဟ တေသဉ္စ ယောနိရောဓေါ ဧဝံ ဝါဒီ မဟာသမဏော။';
  String zawgyiText = Rabbit.uni2zg(text);
  String unicodeText = Rabbit.zg2uni(zawgyiText);
```

##

##




## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
