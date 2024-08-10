import 'spell.dart';

class Character extends Actor with Spell {
  String fullName = '';
  String nickname = '';
  String hogwartsHouse = '';
  List<String> children = [];
  Character(this.fullName, this.nickname, this.hogwartsHouse, this.children,
      String interpretedBy)
      : super(interpretedBy);

  Character.fromJson(Map<String, dynamic> jsonObject) :super(jsonObject['interpretedBy']){
    fullName = jsonObject['fullName'];
    nickname = jsonObject['nickname'];
    hogwartsHouse = jsonObject['hogwartsHouse'];
    children = List<String>.from(jsonObject['children']);
  }
}

class Actor {
  final String name;
  Actor(this.name);
}
