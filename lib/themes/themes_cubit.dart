import 'package:flutter_bloc/flutter_bloc.dart';

import 'themes_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeMode: ThemeMode.primary));
  void changeThemeMode() {
    emit(state.copyWith(
        themeMode: state.themeMode == ThemeMode.primary
            ? ThemeMode.noel
            : ThemeMode.primary));
  }
}
