// import 'package:flutter/material.dart';
// import 'package:reminder_apps/gen/colors.gen.dart';
//
// class TabBarExample extends StatefulWidget {
//   @override
//   _TabBarExampleState createState() => _TabBarExampleState();
// }
//
// class _TabBarExampleState extends State<TabBarExample>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     super.initState();
//     // Initialize TabController with the number of tabs (3 in this example).
//     _tabController = TabController(length: 3, vsync: this);
//   }
//
//   @override
//   void dispose() {
//     // Dispose TabController to prevent memory leaks.
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter TabBar Example'),
//         bottom: TabBar(
//           controller: _tabController,
//           indicatorColor: AppColors.cE90909,
//           indicatorWeight: 3.0,
//           indicatorSize: TabBarIndicatorSize.tab,
//           labelColor: AppColors.cE90909,
//           unselectedLabelColor: AppColors.c000000,
//           tabs: const [
//             Tab(text: 'Home'),
//             Tab(text: 'Profile'),
//             Tab(text: 'Settings'),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: const [
//           Center(child: Text('Home Screen')),
//           Center(child: Text('Profile Screen')),
//           Center(child: Text('Settings Screen')),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: TabBarExample(),
//   ));
// }


import 'package:flutter/material.dart';

class CustomIndicatorTabBar extends StatelessWidget {
  const CustomIndicatorTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Custom TabBar Indicator'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab, // Full-width indicator
            tabs: const [
              Tab(text: 'Home'),
              Tab(text: 'Profile'),
              Tab(text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Page')),
            Center(child: Text('Profile Page')),
            Center(child: Text('Settings Page')),
          ],
        ),
      ),
    );
  }
}
