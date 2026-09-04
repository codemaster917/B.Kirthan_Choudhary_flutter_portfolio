/// Simple data model for a project card shown on the Projects screen.
class ProjectItem {
  final String title;
  final String tech;
  final String description;
  final String label; // "Academic Project" or "Demo Project"

  const ProjectItem({
    required this.title,
    required this.tech,
    required this.description,
    required this.label,
  });
}

/// Sample / academic / demo projects.
/// These are placeholders until real project links/details are added.
const List<ProjectItem> projectItems = [
  ProjectItem(
    label: 'Academic Project',
    title: 'Task Management System',
    tech: 'Node.js • Express.js • MongoDB • JWT',
    description:
        'A task management application that allows users to create, '
        'update, organize and manage tasks, with secure JWT-based '
        'authentication and RESTful APIs.',
  ),
  ProjectItem(
    label: 'Demo Project',
    title: 'Student Attendance System',
    tech: 'Flutter • Dart • Firebase',
    description:
        'A student attendance application for recording and viewing '
        'attendance information.',
  ),
  ProjectItem(
    label: 'Demo Project',
    title: 'Weather Application',
    tech: 'Flutter • Dart • REST API',
    description:
        'A simple weather application that displays current weather '
        'information using a public weather API.',
  ),
  ProjectItem(
    label: 'Demo Project',
    title: 'Expense Tracker',
    tech: 'Flutter • Dart',
    description:
        'A simple application for recording and tracking daily expenses.',
  ),
];
