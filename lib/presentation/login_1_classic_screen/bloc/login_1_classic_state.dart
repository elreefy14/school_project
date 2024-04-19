part of 'login_1_classic_bloc.dart';

/// Represents the state of Login1Classic in the application.

// ignore_for_file: must_be_immutable
class Login1ClassicState extends Equatable {
  Login1ClassicState(
      {this.usernameOneController,
      this.codeOneController,
      this.passwordOneController,
      this.login1ClassicModelObj});

  TextEditingController? usernameOneController;

  TextEditingController? codeOneController;

  TextEditingController? passwordOneController;

  Login1ClassicModel? login1ClassicModelObj;

  @override
  List<Object?> get props => [
        usernameOneController,
        codeOneController,
        passwordOneController,
        login1ClassicModelObj
      ];
  Login1ClassicState copyWith({
    TextEditingController? usernameOneController,
    TextEditingController? codeOneController,
    TextEditingController? passwordOneController,
    Login1ClassicModel? login1ClassicModelObj,
  }) {
    return Login1ClassicState(
      usernameOneController:
          usernameOneController ?? this.usernameOneController,
      codeOneController: codeOneController ?? this.codeOneController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      login1ClassicModelObj:
          login1ClassicModelObj ?? this.login1ClassicModelObj,
    );
  }
}
