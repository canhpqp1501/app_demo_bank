// ignore_for_file: non_constant_identifier_names

import 'package:app_demo_banking/network/data_state/data_state.dart';
import 'package:app_demo_banking/network/remote/apis/user_api.dart';
import 'package:app_demo_banking/network/remote/models/post_item.dart';

import 'package:app_demo_banking/network/remote/models/user_info.dart';
import 'package:app_demo_banking/network/repositories/home_repository.dart';

class HomeReponsitoryImpl implements HomeReponsitory {
  @override
  Future<DataState<UserInfoResponse>> getUserInfo() async {
    final Response = await UserApi().getUserInfo();
    if (Response.responsecode == 200) {
      return DataSuccess(data: Response);
    } else {
      return DataFailed(data: Response);
    }
  }

  // @override
  // Future<DataState<GetItemResponse>> getListInfoItem() async {
  //   final Response = await UserApi().getInfoItem();
  //   if (Response.responsecode == 200) {
  //     return DataSuccess(data: Response);
  //   } else {
  //     return DataFailed(data: Response);
  //   }
  // }

  @override
  Future<DataState<PostItemResponse>> postListInfoItem(
    UserInfo item,
  ) async {
    final Response = await UserApi().postInfoItem(item);
    if (Response.responseCode == 200) {
      return DataSuccess(data: Response);
    } else {
      return DataFailed(data: Response);
    }
  }
}
