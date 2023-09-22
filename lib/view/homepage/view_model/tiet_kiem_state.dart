// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types

class tietKiemState {
  int? money;

  tietKiemState({
    this.money,
  });

  tietKiemState copyWith({
    int? money,
    int? passM,
  }) {
    return tietKiemState(
      money: money ?? this.money,
    );
  }
}
