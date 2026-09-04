import 'package:flutter/material.dart';
import '../widgets/portfolio_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 600;
    final photoSize = isSmall ? 130.0 : 160.0;

    return Scaffold(
      appBar: const PortfolioNavBar(currentRoute: '/'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: photoSize,
                    height: photoSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFE4E2FB),
                        width: 4,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF3355D8).withOpacity(0.15),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    // ClipOval + BoxFit.cover + top alignment guarantees a
                    // perfect circle with no rectangular edges showing,
                    // and keeps the face/upper body centered in frame.
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'B. Kirthan Choudhary',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3355D8),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'B.Tech 3rd Year • Computer Science',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'C.R. Rao Advanced Institute of Mathematics, '
                    'Statistics and Computer Science (AIMSCS)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Hi, I'm an aspiring Computer Science student who "
                    'enjoys learning software development, building '
                    'useful applications, and exploring modern '
                    'technologies. Welcome to my portfolio!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFF444444),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 14,
                    runSpacing: 14,
                    children: [
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed('/about'),
                          child: const Text('About Me'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacementNamed('/projects'),
                          child: const Text('Projects'),
                        ),
                      ),
                    ],
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
