import 'package:funda_assessment/domain/entities/funda_data.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_cubit.dart';
import 'package:funda_assessment/presentation/bloc/funda_data/funda_data_state.dart';
import 'package:funda_assessment/presentation/pages/property_page.dart';
import 'package:funda_assessment/presentation/widgets/loading.dart';
import 'package:funda_assessment/presentation/widgets/property_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// Page containing all the elements needed for a complete [FundaDataPage].
/// The page includes a `listview` with list tiles containing an image, a title
/// an object number, and the first known author
class FundaDataPage extends StatefulWidget {
  const FundaDataPage({Key? key}) : super(key: key);

  @override
  State<FundaDataPage> createState() => _FundaDataPageState();
}

class _FundaDataPageState extends State<FundaDataPage> {
  late TextEditingController textController;
  late ScrollController scrollController = ScrollController();

  /// Calls [fetchFundaData] as soon as possible to get data for the page.
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    context.read<FundaDataCubit>().fetchFundaData();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.position.pixels) {
        context.read<FundaDataCubit>().fetchFundaData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'FundaData',
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: CustomScrollView(
        shrinkWrap: true, // or false
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Enter search term',
              ),
              controller: textController,
              onSubmitted: (term) {
                context.read<FundaDataCubit>().search(term);
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverFillRemaining(
            hasScrollBody: true, // if using a column, so the widgets in it, doesn't scroll
            child: BlocBuilder<FundaDataCubit, FundaDataState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Loading(message: 'Loading data...'),
                  hasData: (data, page) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            key: const Key('funda_data_listview'),
                            itemCount: data.length,
                            controller: scrollController,
                            itemBuilder: (context, index) {
                              PropertySummary property = data[index];
                              return InkWell(
                                key: Key(property.id),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PropertyPage(
                                        propertySummary: property,
                                      ),
                                    ),
                                  );
                                },
                                child: PropertyOverview(
                                  thumbnail: Hero(
                                    tag: "${property.id}hero",
                                    child: Image(
                                      fit: BoxFit.cover,
                                      // TODO: use CachedNetworkImage
                                      image: NetworkImage(property.fotoLarge),
                                    ),
                                  ),
                                  title: property.adres,
                                  subtitle: property.postcode,
                                  price: property.prijs.koopprijs,
                                  size: 'Woon oppervlakte: ${property.woonoppervlakte}m²',
                                  bottomSubText: DateFormat('MMM d, yyyy').format(property.publicatieDatum),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  error: (_) => Center(
                    key: const Key('funda_data_error'),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Something went wrong, try again.'),
                        TextButton.icon(
                            onPressed: () {
                              textController.value = TextEditingValue.empty;
                              context.read<FundaDataCubit>().search('');
                            },
                            icon: const Icon(Icons.refresh),
                            label: const Text('Retry'))
                      ],
                    ),
                  ),
                  orElse: () => const Loading(message: 'Loading data...'),
                );
                // only show error when `state.hasError && state.artObjects.isEmpty` else the error widget
                // is shown even if we have art objects to display
              },
            ),
          ),
        ],
      ),
    );
  }
}
