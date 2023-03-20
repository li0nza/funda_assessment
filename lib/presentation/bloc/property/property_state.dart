
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:funda_assessment/domain/entities/property.dart';

part 'property_state.freezed.dart';

/// State representing the current state of the [PropertyCubit].
@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState.loading() = _LoadingState;
  const factory PropertyState.hasData({required Property property}) = _HasDataState;
  const factory PropertyState.error({required String error}) = _ErrorState;
}
