import 'package:flutter/material.dart';
import 'package:micro_app_ds/micro_app_ds.dart';

class DSAppBarTabs extends StatelessWidget {
  final String title;
  final int length;
  final List<Widget> tabs;
  final List<Widget> children;
  const DSAppBarTabs({
    super.key,
    required this.title,
    required this.length,
    required this.tabs,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            bottom: TabBar(
              tabs: tabs,
              indicatorColor: DSColors.secondaryColor,
              tabAlignment: TabAlignment.center,
              isScrollable: true,
              labelStyle: DSTypographies.small,
              labelColor: DSColors.secondaryColor,
            ),
            title: Text(
              title,
              style: DSTypographies.large.copyWith(
                fontWeight: DSFontWeights.extraMedium,
              ),
            ),
          ),
          body: TabBarView(
            children: children,
          ),
        ),
      ),
    );
  }
}
