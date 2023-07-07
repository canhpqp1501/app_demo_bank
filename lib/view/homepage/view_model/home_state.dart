// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'package:app_demo_banking/network/remote/models/user_info.dart';

class HomeState {
  bool isLoading;
  UserInfo? userInfo;

  HomeState({
    required this.isLoading,
    this.userInfo,
  });

  HomeState copyWith({
    bool? isLoading,
    UserInfo? userInfo,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      userInfo: userInfo ?? this.userInfo,
    );
  }
}

