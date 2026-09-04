import 'package:flutter/material.dart';
import '../widgets/portfolio_nav_bar.dart';
import '../widgets/project_card.dart';
import '../data/projects_data.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioNavBar(currentRoute: '/projects'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                children: [
                  const Text(
                    'My Projects',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3355D8),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'A few academic and demo projects I have built while '
                    'learning.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
                  ),
                  const SizedBox(height: 24),
                  for (final project in projectItems)
                    ProjectCard(project: project),
                  const SizedBox(height: 12),
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
