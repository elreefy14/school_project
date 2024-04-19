import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/three_model.dart';
part 'three_event.dart';
part 'three_state.dart';

/// A bloc that manages the state of a Three according to the event that is dispatched to it.
class ThreeBloc extends Bloc<ThreeEvent, ThreeState> {
  ThreeBloc(ThreeState initialState) : super(initialState) {
    on<ThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ThreeInitialEvent event,
    Emitter<ThreeState> emit,
  ) async {}
}
