import 'package:flutter/material.dart';

/// A single navigation destination.
class NavItem {
  final String label;
  final String route;

  const NavItem(this.label, this.route);
}

const List<NavItem> navItems = [
  NavItem('Home', '/'),
  NavItem('About', '/about'),
  NavItem('Projects', '/projects'),
  NavItem('Contact', '/contact'),
];

/// Top app bar used on every screen.
/// - On wide screens: shows a horizontal row of nav buttons.
/// - On narrow screens: shows a hamburger menu that opens a dropdown.
class PortfolioNavBar extends StatelessWidget implements PreferredSizeWidget {
  final String currentRoute;

  const PortfolioNavBar({super.key, required this.currentRoute});

  static const double mobileBreakpoint = 700;

  void _goTo(BuildContext context, String route) {
    if (route == currentRoute) return;
    Navigator.of(context).pushReplacementNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < mobileBreakpoint;

    return AppBar(
      titleSpacing: 16,
      title: const Text(
        'Kirthan Choudhary',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      actions: isMobile
          ? [
              PopupMenuButton<String>(
                icon: const Icon(Icons.menu),
                onSelected: (route) => _goTo(context, route),
                itemBuilder: (context) => navItems
                    .map(
                      (item) => PopupMenuItem<String>(
                        value: item.route,
                        child: Text(item.label),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(width: 8),
            ]
          : [
              for (final item in navItems)
                TextButton(
                  onPressed: () => _goTo(context, item.route),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontWeight: item.route == currentRoute
                          ? FontWeight.w700
                          : FontWeight.w500,
                      decoration: item.route == currentRoute
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                  child: Text(item.label),
                ),
              const SizedBox(width: 12),
            ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
