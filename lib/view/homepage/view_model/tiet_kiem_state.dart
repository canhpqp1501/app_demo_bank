// ignore_for_file: camel_case_types

class tietKiemState {
  int? money;
  tietKiemState({
    this.money,
  });

  tietKiemState copyWith({
    int? money,
  }) {
    return tietKiemState(
      money: money ?? this.money,
    );
  }
}
