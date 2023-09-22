import 'package:app_demo_banking/view/homepage/view_model/tiet_kiem_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class tietKiemCubit extends Cubit<tietKiemState> {
  tietKiemCubit() : super(tietKiemState(money: 0, ));
  void setMoneyHandle(int moneyUpdate, ) {
    // print("update" + moneyUpdate.toString());
    emit(state.copyWith(money: moneyUpdate));
    // emit(state.copyWith(passM: passM1));
    // print("after  update" + state.money.toString());
  }
}
