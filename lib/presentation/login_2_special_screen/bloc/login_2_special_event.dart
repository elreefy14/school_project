part of 'login_2_special_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login2Special widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Login2SpecialEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login2Special widget is first created.
class Login2SpecialInitialEvent extends Login2SpecialEvent {
  @override
  List<Object?> get props => [];
}
