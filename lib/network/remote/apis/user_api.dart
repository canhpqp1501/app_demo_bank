import 'dart:convert';

import 'package:app_demo_banking/network/configs/network_constant.dart';
import 'package:app_demo_banking/network/remote/models/post_item.dart';

import 'package:app_demo_banking/network/remote/models/user_info.dart';

import 'package:http/http.dart' as http;

class UserApi {
  Future<UserInfoResponse> getUserInfo() async {
    var request = http.Request(
        'GET', Uri.parse('${NetworkConstants.baseUrl}/user_info.json'));

    http.StreamedResponse response = await request.send();

    final data = await response.stream.bytesToString();
    // print(data);
    final dataDecode = jsonDecode(data) as Map<String, dynamic>;
    List<UserInfo> listUser = [];
    for (var item in dataDecode.entries) {
      final itemDecode = UserInfo.fromJson(item.value);
      listUser.add(itemDecode);
    }
    return UserInfoResponse(
      userInfoList: listUser,
      responsecode: response.statusCode,
    );
  }

  // Future<GetItemResponse> getInfoItem() async {
  //   var request = http.Request(
  //       'GET', Uri.parse('${NetworkConstants.baseUrl}user_info.json'));

  //   http.StreamedResponse response = await request.send();

  //   final data = await response.stream.bytesToString();
  //   final dataDecode = jsonDecode(data) as Map<String, dynamic>;
  //   List<InfoItem> InfoItemList = [];
  //   for (var item in dataDecode.entries) {
  //     final itemDecode = InfoItem.fromJson(item.value);
  //     InfoItemList.add(itemDecode);
  //   }
  //   return GetItemResponse(
  //     listInfoItem: InfoItemList,
  //     responsecode: response.statusCode,
  //   );
  // }
  ///tess lỗi api

  Future<PostItemResponse> postInfoItem(
    UserInfo item,
  ) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('${NetworkConstants.baseUrl}user_info.json'));
    request.body = jsonEncode(item.toJson());
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    return PostItemResponse(
      userInfo: item,
      responseCode: response.statusCode,
    );
  }
}
