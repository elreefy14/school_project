part of 'login_1_classic_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Login1Classic widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Login1ClassicEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login1Classic widget is first created.
class Login1ClassicInitialEvent extends Login1ClassicEvent {
  @override
  List<Object?> get props => [];
}
