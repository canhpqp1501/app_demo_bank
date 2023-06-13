// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserInfo {
  late final String email;
  late final int number;
  late final int money;
  late final String name;

  UserInfo(
      {required this.number,
      required this.money,
      required this.name,
      required this.email});

  UserInfo.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    number = json['number'];
    money = json['money'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['name'] = name;
    _data['number'] = number;
    _data['money'] = money;
    return _data;
  }
}

class UserInfoResponse {
  final int responsecode;
  final List<UserInfo> userInfoList;
  UserInfoResponse({
    required this.responsecode,
    required this.userInfoList,
  });
}
