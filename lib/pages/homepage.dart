import 'package:believers_beacon/components/hometile.dart';
import 'package:flutter/material.dart';

class HomeTileData {
  final String iconPath;
  final String title;

  HomeTileData({
    required this.iconPath,
    required this.title,
  });
}

class MenuItem {
  final String itemTitle;
  final String itemIcon;

  MenuItem({
    required this.itemIcon,
    required this.itemTitle,
  });
}

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final List<HomeTileData> tileList = [
    HomeTileData(iconPath: 'assets/images/hymns.png', title: 'Hymns'),
    HomeTileData(
        iconPath: 'assets/images/calendar_month.png', title: 'Event Calendar'),
    HomeTileData(
        iconPath: 'assets/images/library.png', title: 'Sermon Library'),
    HomeTileData(iconPath: 'assets/images/hands.png', title: 'Prayer Requests'),
    HomeTileData(
        iconPath: 'assets/images/card_giftcard.png', title: 'Online Giving'),
    HomeTileData(iconPath: 'assets/images/group.png', title: 'YPU'),
  ];

  final List<MenuItem> topMenuItems = [
    MenuItem(itemIcon: 'Icons.home', itemTitle: 'Home'),
    MenuItem(itemIcon: 'Icons.person', itemTitle: 'Profile'),
    MenuItem(itemIcon: 'Icons.bookmarks', itemTitle: 'Bookmarks'),
    MenuItem(itemIcon: 'Icons.notifications', itemTitle: 'Notifications'),
  ];

  final List<MenuItem> bottomMenuItems = [
    MenuItem(itemIcon: 'Icons.settings', itemTitle: 'Settings'),
    MenuItem(itemIcon: 'Icons.help_outline', itemTitle: 'Help'),
    MenuItem(itemIcon: 'Icons.logout', itemTitle: 'Logout'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: topMenuItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(topMenuItems[index].itemTitle),
                  onTap: () {
                    print('Tapped on: ${topMenuItems[index].itemTitle}');
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(12.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 40),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Praise', style: TextStyle(fontSize: 20)),
                      Text('The Lord 🙏',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  const SizedBox(height: 20), // Adjust the spacing as needed
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F2F3),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x268163D6),
                          blurRadius: 8,
                          offset: Offset(2, 8),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/praying.png'),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Daily Scriptures',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                              Text('Matt 5 vs 1-11',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              Text('Romans 8 vs 1-7',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 155 / 105,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final tile = tileList[index];
                return HomeTile(
                  imagePath: tile.iconPath,
                  title: tile.title,
                );
              },
              childCount: tileList.length,
            ),
          ),
        ],
      ),
    );
  }
}
