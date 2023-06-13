import 'package:app_demo_banking/network/data_state/data_state.dart';
import 'package:app_demo_banking/network/remote/models/post_item.dart';

import 'package:app_demo_banking/network/remote/models/user_info.dart';

abstract class HomeReponsitory {
  Future<DataState<UserInfoResponse>> getUserInfo();
  // Future<DataState<GetItemResponse>> getListInfoItem();
  Future<DataState<PostItemResponse>> postListInfoItem(
    UserInfo item,
  );
}
