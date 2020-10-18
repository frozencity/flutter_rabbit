import 'package:test/test.dart';
import 'package:rabbit_converter/rabbit_converter.dart';

void main() {
  final cases = <String, String>{
    'သီဟိုဠ်မှ ဉာဏ်ကြီးရှင်သည် အာယုဝဍ္ဎနဆေးညွှန်းစာကို ဇလွန်ဈေးဘေး ဗာဒံပင်ထက် အဓိဋ္ဌာန်လျက် ဂဃနဏဖတ်ခဲ့သည်။':
        'သီဟိုဠ္မွ ဉာဏ္ႀကီးရွင္သည္ အာယုဝၯနေဆးၫႊန္းစာကို ဇလြန္ေဈးေဘး ဗာဒံပင္ထက္ အဓိ႒ာန္လ်က္ ဂဃနဏဖတ္ခဲ့သည္။',
  };

  test('should pass all the test cases', () {
    for (final entry in cases.entries) {
      final zawgyi = Rabbit.uni2zg(entry.key);
      final unicode = Rabbit.zg2uni(entry.value);

      expect(unicode, entry.key);
      expect(zawgyi, entry.value);
    }
  });
}
