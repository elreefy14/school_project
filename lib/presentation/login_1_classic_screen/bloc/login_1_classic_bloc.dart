import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/login_1_classic_model.dart';
part 'login_1_classic_event.dart';
part 'login_1_classic_state.dart';

/// A bloc that manages the state of a Login1Classic according to the event that is dispatched to it.
class Login1ClassicBloc extends Bloc<Login1ClassicEvent, Login1ClassicState> {
  Login1ClassicBloc(Login1ClassicState initialState) : super(initialState) {
    on<Login1ClassicInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Login1ClassicInitialEvent event,
    Emitter<Login1ClassicState> emit,
  ) async {
    emit(state.copyWith(
      usernameOneController: TextEditingController(),
      codeOneController: TextEditingController(),
      passwordOneController: TextEditingController(),
    ));
  }
}
