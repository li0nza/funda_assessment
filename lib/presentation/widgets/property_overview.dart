import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// List tile showing an `image`, `title`, `subtitle`, and 2 rows of `bottom text`
class PropertyOverview extends StatelessWidget {
  const PropertyOverview({
    super.key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.bottomSubText,
    required this.size,
  });

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final int price;
  final String bottomSubText;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 180,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                color: Colors.grey,
                child: thumbnail,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 4, 8),
                child: _PropertyOverviewDescription(
                  title: title,
                  subtitle: subtitle,
                  price: price,
                  bottomSubText: bottomSubText,
                  size: size,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PropertyOverviewDescription extends StatelessWidget {
  const _PropertyOverviewDescription({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.bottomSubText,
    required this.size,
  });

  final String title;
  final String subtitle;
  final int price;
  final String bottomSubText;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 4,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              Text(
                size,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                NumberFormat.currency(symbol: '€').format(price),
                maxLines: 4,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(bottomSubText, style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
      ],
    );
  }
}
