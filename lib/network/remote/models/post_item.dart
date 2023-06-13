import 'package:app_demo_banking/network/remote/models/user_info.dart';

class PostItemResponse {
  UserInfo userInfo;
  int responseCode;
  PostItemResponse({
    required this.userInfo,
    required this.responseCode,
  });
}
