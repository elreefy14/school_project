part of 'login_2_special_bloc.dart';

/// Represents the state of Login2Special in the application.

// ignore_for_file: must_be_immutable
class Login2SpecialState extends Equatable {
  Login2SpecialState(
      {this.usernameoneController,
      this.codeoneController,
      this.login2SpecialModelObj});

  TextEditingController? usernameoneController;

  TextEditingController? codeoneController;

  Login2SpecialModel? login2SpecialModelObj;

  @override
  List<Object?> get props =>
      [usernameoneController, codeoneController, login2SpecialModelObj];
  Login2SpecialState copyWith({
    TextEditingController? usernameoneController,
    TextEditingController? codeoneController,
    Login2SpecialModel? login2SpecialModelObj,
  }) {
    return Login2SpecialState(
      usernameoneController:
          usernameoneController ?? this.usernameoneController,
      codeoneController: codeoneController ?? this.codeoneController,
      login2SpecialModelObj:
          login2SpecialModelObj ?? this.login2SpecialModelObj,
    );
  }
}
