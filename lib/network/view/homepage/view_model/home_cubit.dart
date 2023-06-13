import 'package:app_demo_banking/network/data_state/data_state.dart';
import 'package:app_demo_banking/network/repositories/home_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(isLoading: false));

  void getUserInfo(String email) async {
    emit(state.copyWith(isLoading: true));

    final response = await HomeReponsitoryImpl().getUserInfo();
    print(response.data?.userInfoList);
    if (response is DataSuccess) {
      for (var element in response.data!.userInfoList) {
        if (element.email == email) {
          emit(state.copyWith(userInfo: element));
        }
      }
    }

    emit(state.copyWith(isLoading: false));
  }
}
