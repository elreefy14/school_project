part of 'three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Three widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Three widget is first created.
class ThreeInitialEvent extends ThreeEvent {
  @override
  List<Object?> get props => [];
}
