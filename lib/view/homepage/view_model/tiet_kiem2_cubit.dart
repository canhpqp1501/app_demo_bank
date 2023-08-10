import 'package:app_demo_banking/view/homepage/view_model/tiet_kiem2_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectCubit extends Cubit<tietKiem2State> {
  SubjectCubit() : super(tietKiem2State(savingMoney: 0));
  void setSavingMoney(int moneyUp){
   emit(state.copyWith(savingMoney: moneyUp));
  }
}