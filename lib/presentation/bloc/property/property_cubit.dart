import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_assessment/domain/usecases/get_property_details.dart';
import 'package:funda_assessment/presentation/bloc/property/property_state.dart';

/// [Cubit] managing the [FundaDataState]]. Requires the [getFundaData] `use case`
class PropertyCubit extends Cubit<PropertyState> {
  final GetPropertyDetails _getPropertyDetails;

  PropertyCubit(this._getPropertyDetails) : super(const PropertyState.loading());

  /// Method to fetch a [FundaData] with a list of [ArtObject]s.
  /// [Search] can be passed to search the API
  /// On success will emit `loading:false` and a list of the [ArtObject]s
  /// On Failure will emit `hasError: true`
  void fetchPropertyDetails({required String id}) async {
    final result = await _getPropertyDetails.execute(id: id);
    result.fold(
      (failure) {
        // TODO: improve usage of `hasError` by exposing the type of error
        emit(PropertyState.error(error: failure.message));
      },
      (data) {
        emit(PropertyState.hasData(property: data));
      },
    );
  }

  void clear() {
    emit(const PropertyState.loading());
  }
}
