part of 'four_bloc.dart';

/// Represents the state of Four in the application.

// ignore_for_file: must_be_immutable
class FourState extends Equatable {
  FourState({this.fourModelObj});

  FourModel? fourModelObj;

  @override
  List<Object?> get props => [fourModelObj];
  FourState copyWith({FourModel? fourModelObj}) {
    return FourState(
      fourModelObj: fourModelObj ?? this.fourModelObj,
    );
  }
}
