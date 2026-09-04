import 'package:flutter/material.dart';
import '../data/projects_data.dart';

/// A single project card shown on the Projects screen.
class ProjectCard extends StatelessWidget {
  final ProjectItem project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 6,
            children: [
              Text(
                project.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF3355D8),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF2FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  project.label,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3355D8),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            project.tech,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF888888),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 15,
              height: 1.55,
              color: Color(0xFF444444),
            ),
          ),
        ],
      ),
    );
  }
}
