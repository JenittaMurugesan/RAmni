import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: const Color(0xFFFF5B55),
          labelColor: const Color(0xFFFF5B55),
          labelPadding: const EdgeInsets.only(right: 6),
          indicatorWeight: 0.5,
          unselectedLabelColor: Colors.grey[400],
          labelStyle: const TextStyle(
            fontSize: 14.0,
          ),
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Description',
            ),
            Tab(
              text: 'Artist',
            ),
            Tab(text: 'Reviews'),
            Tab(text: 'Policy'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            Text(
              "Minimalist styling is not about creating a cold. Hard empty White box of a home.",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Text(
              "Minimalist styling is not about creating a cold. Hard empty White box of a home.",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Text(
              "Minimalist styling is not about creating a cold. Hard empty White box of a home.",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Text(
              "Minimalist styling is not about creating a cold. Hard empty White box of a home.",
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
