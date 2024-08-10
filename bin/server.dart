import 'package:http/http.dart' as http;
import 'character.dart';
import 'dart:convert';
import 'dart:math';

void main() {
  playHarryPotter();
}

Future fetchCharacters() async {
  final httpPackageUrl =
      Uri.parse('https://potterapi-fedeperin.vercel.app/es/characters');
  final httpPackageInfo = await http.read(httpPackageUrl);
  // print(httpPackageInfo);
  return httpPackageInfo;
}

void playHarryPotter() async {
  final data = await fetchCharacters();
  final List<dynamic> dataList = jsonDecode(data);
  final random = Random();
  final randomObject = dataList[random.nextInt(dataList.length)];
  final Character character = Character.fromJson(randomObject);
  character.doSpell();
}
