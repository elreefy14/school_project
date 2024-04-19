import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/login_2_special_model.dart';
part 'login_2_special_event.dart';
part 'login_2_special_state.dart';

/// A bloc that manages the state of a Login2Special according to the event that is dispatched to it.
class Login2SpecialBloc extends Bloc<Login2SpecialEvent, Login2SpecialState> {
  Login2SpecialBloc(Login2SpecialState initialState) : super(initialState) {
    on<Login2SpecialInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Login2SpecialInitialEvent event,
    Emitter<Login2SpecialState> emit,
  ) async {
    emit(state.copyWith(
      usernameoneController: TextEditingController(),
      codeoneController: TextEditingController(),
    ));
  }
}
