import 'package:flutter/material.dart';
import '../widgets/portfolio_nav_bar.dart';
import '../widgets/section_card.dart';
import '../data/skills_data.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PortfolioNavBar(currentRoute: '/about'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFE4E2FB),
                        width: 4,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  SectionCard(
                    title: 'Who I Am',
                    child: const Text(
                      "Hi, I'm B. Kirthan Choudhary, a Computer Science "
                      'student at C.R. Rao Advanced Institute of '
                      'Mathematics, Statistics and Computer Science '
                      '(AIMSCS). I enjoy learning software development, '
                      'building useful applications, and exploring '
                      'modern technologies.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Color(0xFF444444),
                      ),
                    ),
                  ),
                  const SectionCard(
                    title: 'Education',
                    child: Text(
                      'Course: B.Tech, Computer Science\n'
                      'Year: 3rd Year\n'
                      'College: C.R. Rao Advanced Institute of '
                      'Mathematics, Statistics and Computer Science '
                      '(AIMSCS)',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.6,
                        color: Color(0xFF444444),
                      ),
                    ),
                  ),
                  SectionCard(
                    title: 'Skills (Learning / Working With)',
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (final skill in skillItems) SkillChip(label: skill),
                      ],
                    ),
                  ),
                  SectionCard(
                    title: 'Areas of Interest',
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (final interest in interestItems)
                          SkillChip(label: interest),
                      ],
                    ),
                  ),
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
