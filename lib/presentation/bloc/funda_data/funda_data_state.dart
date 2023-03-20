
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:funda_assessment/domain/entities/funda_data.dart';

part 'funda_data_state.freezed.dart';

/// State representing the current state of the [FundaDataCubit].
@freezed
class FundaDataState with _$FundaDataState {
  const factory FundaDataState.loading() = _LoadingState;
  const factory FundaDataState.hasData({required List<PropertySummary> propertySummaries, required int page}) = _HasDataState;
  const factory FundaDataState.error({required String error}) = _ErrorState;
}
