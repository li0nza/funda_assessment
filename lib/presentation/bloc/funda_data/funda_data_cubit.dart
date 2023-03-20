import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/domain/usecases/get_funda_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_state.dart';

/// [Cubit] managing the [FundaDataState]]. Requires the [getFundaData] `use case`
class FundaDataCubit extends Cubit<FundaDataState> {
  final GetFundaData _getFundaData;
  String _searchTerm = '';
  int _page = 0;
  List<PropertySummary> _summaries = [];

  FundaDataCubit(this._getFundaData) : super(const FundaDataState.loading());

  /// Method to fetch a [FundaData] with a list of [PropertySummary]s.
  /// On success will emit `FundaDataState.hasData` and a list of the [PropertySummary]s
  /// On Failure will emit `FundaDataState.error`
  void fetchFundaData() async {
    final result = await _getFundaData.execute(page: _page, search: _searchTerm);
    result.fold(
      (failure) {
        // TODO: improve usage of `hasError` by exposing the type of error
        emit(FundaDataState.error(error: failure.message));
      },
      (data) {
        _page += 1;
        _summaries.addAll(data.properties);
        emit(FundaDataState.hasData(propertySummaries: _summaries, page: _page));
      },
    );
  }

  /// Method to fetch a [FundaData] with a list of [ArtObject]s.
  /// sets `state.searchTerm` and `loading: true`which is used to [Search]
  /// then re-uses [fetchFundaData]
  Future<void> search(String term) async {
    _summaries = [];
    _searchTerm = term;
    _page = 0;
    fetchFundaData();
  }
}
