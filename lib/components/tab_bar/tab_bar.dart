import 'package:flutter/material.dart';

import 'package:attendance/core/util/color_palettes.dart';

class TabBarC extends StatelessWidget {
  final TickerProvider vsync;
  final List<String> tabsTitles;

  const TabBarC({
    Key? key,
    required this.vsync,
    required this.tabsTitles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: TabBar(
        controller: TabController(length: tabsTitles.length, vsync: vsync),
        isScrollable: true,
        unselectedLabelColor: ColorPalette.grey.shade50,
        labelColor: Theme.of(context).primaryColor,
        tabs: tabsTitles.map((String tabTitle) {
          return Tab(
            child: Text(tabTitle),
          );
        }).toList(),
      ),
      preferredSize: const Size.fromHeight(30.0),
    );
  }
}
