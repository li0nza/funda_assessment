import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/presentation/bloc/property/property_cubit.dart';
import 'package:funda_assessment/presentation/bloc/property/property_state.dart';
import 'package:funda_assessment/presentation/widgets/info_row.dart';
import 'package:funda_assessment/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// Page containing all the elements needed for a complete [PropertyPage].
/// Requires an instance of [ArtObject] to display an image and title while loading.
/// The page includes a `listview` with an image of the art work, the `title`, `description`,
/// `medium used`, `titles`,` object types` and `object number`
class PropertyPage extends StatefulWidget {
  final PropertySummary propertySummary;

  const PropertyPage({
    Key? key,
    required this.propertySummary,
  }) : super(key: key);

  @override
  State<PropertyPage> createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage> {
  /// Calls [fetchPropertyDetails] as soon as possible to get data for the page.
  /// using the `widget.artObject` passed from [FundaDataPage]
  @override
  void initState() {
    super.initState();
    context.read<PropertyCubit>().fetchPropertyDetails(id: widget.propertySummary.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyCubit, PropertyState>(builder: (context, state) {
      /// wrap [Scaffold] in [WillPopScope] to be able to intercept [onWillPop]
      /// and clear `PropertyState`
      return WillPopScope(
        onWillPop: () async {
          context.read<PropertyCubit>().clear();
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Details: ${widget.propertySummary.adres}",
              style: const TextStyle(color: Colors.orange),
            ),
          ),
          body: CustomScrollView(
              shrinkWrap: true, // or false
              slivers: <Widget>[
                SliverFillRemaining(
                  hasScrollBody: true, // if using a column, so the widgets in it, doesn't scroll
                  child: ListView(
                    key: const Key('property_details_listview'),
                    children: [
                      Hero(
                        tag: "${widget.propertySummary.id}hero",
                        child: SizedBox(
                          width: double.infinity,
                          child: Image(
                            // TODO: use CachedNetworkImage
                            image: NetworkImage(widget.propertySummary.fotoLarge),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        child: Text(
                          widget.propertySummary.adres,
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 18),
                        child: Text(
                          NumberFormat.currency(symbol: '€').format(widget.propertySummary.prijs.koopprijs),
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 22),
                        ),
                      ),
                      state.maybeWhen(
                          loading: () => const Loading(message: 'Loading details...'),
                          hasData: (data) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Text(
                                        data.volledigeOmschrijving,
                                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      child: Text(
                                        'More Details',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 26),
                                      ),
                                    ),
                                    InfoRow(title: 'Build year', body: data.bouwjaar),
                                    InfoRow(title: 'Build type', body: data.bouwvorm),
                                    InfoRow(title: 'Isolation', body: data.isolatie),
                                    if (data.cv != null) InfoRow(title: 'CV', body: data.cv!),
                                    InfoRow(title: 'Woonlagen', body: data.aantalWoonlagen),
                                    InfoRow(title: 'Makelaar', body: data.makelaar),
                                    InfoRow(title: 'Makelaar Tel', body: data.makelaarTelefoon),
                                    InfoRow(title: 'Kamers', body: data.aantalKamers.toString()),
                                    InfoRow(title: 'Badkamers', body: data.aantalBadkamers.toString()),
                                    InfoRow(title: 'Energielabel', body: data.energielabel.label),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      child: Text(
                                        'Oppervlakte(s)',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 26),
                                      ),
                                    ),
                                    InfoRow(title: 'Woon', body: '${data.woonOppervlakte}m²'),
                                    if (data.perceelOppervlakte != null)
                                      InfoRow(title: 'Perceel', body: '${data.perceelOppervlakte}m²'),
                                    // InfoRow(title: 'Video', body: data.video),
                                  ],
                                ),
                              ),
                          orElse: () => Center(
                                key: const Key('property_error_widget'),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text('Something went wrong!'),
                                      TextButton.icon(
                                          onPressed: () {
                                            context
                                                .read<PropertyCubit>()
                                                .fetchPropertyDetails(id: widget.propertySummary.id);
                                          },
                                          icon: const Icon(Icons.refresh),
                                          label: const Text('Retry'))
                                    ],
                                  ),
                                ),
                              ))
                    ],
                  ),
                ),
              ]),
        ),
      );
    });
  }
}
