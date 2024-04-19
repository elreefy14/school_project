part of 'three_bloc.dart';

/// Represents the state of Three in the application.

// ignore_for_file: must_be_immutable
class ThreeState extends Equatable {
  ThreeState({this.threeModelObj});

  ThreeModel? threeModelObj;

  @override
  List<Object?> get props => [threeModelObj];
  ThreeState copyWith({ThreeModel? threeModelObj}) {
    return ThreeState(
      threeModelObj: threeModelObj ?? this.threeModelObj,
    );
  }
}
