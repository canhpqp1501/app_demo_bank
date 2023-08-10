// ignore_for_file: camel_case_types

class tietKiem2State {
  int? savingMoney;
  tietKiem2State({
    this.savingMoney,
  });

  tietKiem2State copyWith({
    int? savingMoney,
  }) {
    return tietKiem2State(
      savingMoney: savingMoney ?? this.savingMoney,
    );
  }
}