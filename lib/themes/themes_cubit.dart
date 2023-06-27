import 'package:flutter_bloc/flutter_bloc.dart';

import 'themes_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: ThemeData.primaryMode()));
  void changeThemeMode() {
    emit(state.copyWith(
        themeData: state.themeData.themeMode == ThemeMode.primary
            ? ThemeData.noelMode()
            : ThemeData.primaryMode()));
  }
}
