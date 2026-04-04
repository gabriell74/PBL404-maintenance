import 'package:flutter/material.dart';
import 'package:gosheep_mobile/features/authentication/dashboard/screens/dashboard_screen.dart';
import 'package:gosheep_mobile/features/breeding_page.dart';
import 'package:gosheep_mobile/features/history_page.dart';
import 'package:gosheep_mobile/features/sheep_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _navIndex = 0;

  final List<Widget> pages = const [
    DashboardPage(),
    SheepPage(),
    BreedingPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_navIndex],

      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBottomNav() {
    final items = [
      (Icons.grid_view_rounded, Icons.grid_view_outlined, 'Beranda'),
      (Icons.pets_rounded, Icons.pets_outlined, 'Domba'),
      (null, null, ''),
      (Icons.favorite_rounded, Icons.favorite_border_rounded, 'Breeding'),
      (Icons.history_rounded, Icons.history_outlined, 'Riwayat'),
    ];

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
      ),
      padding: const EdgeInsets.only(bottom: 16, top: 10),
      child: Row(
        children: items.asMap().entries.map((e) {
          final i = e.key;
          final item = e.value;

          if (i == 2) {
            return Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF2E7D32),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          shape: const CircleBorder(),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            splashColor: Colors.grey.withOpacity(0.2),
                            highlightColor: Colors.black.withOpacity(0.1),
                            onTap: () {},
                            child: const Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          final isActive = _navIndex == (i < 2 ? i : i - 1);

          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() {
                _navIndex = i < 2 ? i : i - 1;
              }),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isActive ? item.$1! : item.$2!,
                    size: 26,
                    color: isActive ? const Color(0xFF2E7D32) : Colors.grey,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    item.$3,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: isActive ? const Color(0xFF2E7D32) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
