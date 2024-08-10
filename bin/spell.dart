import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

mixin Spell {
  String get fullName;

  void doSpell() async{
    String spellName = await fetchSpells();
    print('$fullName lanzo el hechizo $spellName');
  }

  Future fetchSpells() async{
    final httpPackageUrl = Uri.parse('https://potterapi-fedeperin.vercel.app/es/spells');
    final httpPackageInfo = await http.read(httpPackageUrl);
    final List<dynamic> dataList = jsonDecode(httpPackageInfo);
    final random = Random();
    final randomObject = dataList[random.nextInt(dataList.length)];
    final String spell = randomObject['spell'];
    return spell;
  }
}