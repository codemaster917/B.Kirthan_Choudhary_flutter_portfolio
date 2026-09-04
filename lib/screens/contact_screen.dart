import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/portfolio_nav_bar.dart';
import '../widgets/section_card.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, webOnlyWindowName: '_blank');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioNavBar(currentRoute: '/contact'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                children: [
                  const Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3355D8),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SectionCard(
                    title: 'GitHub',
                    background: Colors.white,
                    child: _ContactRow(
                      icon: Icons.code,
                      label: 'github.com/codemaster917',
                      onTap: () => _openUrl('https://github.com/codemaster917'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushReplacementNamed('/'),
                      child: const Text('Back to Home'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const _ContactRow({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF3355D8), size: 20),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 15,
                  color: onTap != null
                      ? const Color(0xFF3355D8)
                      : const Color(0xFF999999),
                  fontStyle:
                      onTap != null ? FontStyle.normal : FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
