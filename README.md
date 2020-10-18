# Rabbit Converter for Dart

By using this package, you can convert Burmese Strings to and from Zawgyi and Unicode.

## Features

- Converts texts from Zawgyi to Myanmar Unicode.
- Converts texts from Myanmar Unicode to Zawgyi.

## Usage

Simply call the function to convert the string.

```dart
String text = 'ယေဓမ္မာ ဟေတုပ္ပဘဝါ တေသံ ဟေတုံ တထာဂတော အာဟ တေသဉ္စ ယောနိရောဓေါ ဧဝံ ဝါဒီ မဟာသမဏော။';
String zawgyiText = Rabbit.uni2zg(text);
String unicodeText = Rabbit.zg2uni(zawgyiText);
```

## Contributions

- If you **found a bug**, feel free to open an issue.
- If you **have a feature request**, also feel free open an issue.
- If you **want to contribute**, you can submit a pull request.

## Version compatibility

See CHANGELOG for all breaking (and non-breaking) changes.

Rabbit Converter written originally by <a href="https://github.com/saturngod">saturngod</a>.<br>
