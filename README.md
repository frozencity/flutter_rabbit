Rabbit Converter package for Flutter.
Using this, you can convert Burmese Strings to and from Zawgyi and Unicode.

## Features
- Converts from ZawGyi to Myanmar Unicode.
- Converts from Myanmar Unicode to ZawGyi.

## Usage

You must add the library as a dependency to your project.
```yaml
dependencies:
 rabbit_converter: ^1.0.0
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

## Example Project

There is a detailed example project in the `example` folder.

##


## Contributions
* If you **found a bug**, open an issue.
* If you **have a feature request**, open an issue.
* If you **want to contribute**, submit a pull request.
## Version compatibility

See CHANGELOG for all breaking (and non-breaking) changes.

<hr/>
Packaged by <a href="https://github.com/frozencity">frozencity</a>.<br />
Rabbit Converter written in Dart by <a href="https://github.com/frencojobs">frencojobs</a>.<br />
Rabbit Converter written originally by <a href="https://github.com/saturngod">saturngod</a>.<br />

