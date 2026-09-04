# B. Kirthan Choudhary - Flutter Portfolio

A personal portfolio website built as a real **Flutter Web** application
(Dart code, not HTML/CSS/JS) for the Flutter UI Lab Internal Examination.

## Project description

This project is a responsive, multi-screen student portfolio with:

- **Home** — profile photo, name, course/year, college, short intro, and
  quick links to About and Projects.
- **About** — bio, education, skills (technologies currently being learned),
  and areas of interest.
- **Projects** — a set of academic/demo project cards.
- **Contact** — GitHub link and placeholders for LinkedIn/email.

## Technologies used

- **Flutter** (Web target)
- **Dart**
- `url_launcher` package — used only in the Contact screen to open the
  GitHub profile link in a new browser tab. No other external packages are
  used, to keep the project simple and beginner-friendly.

## Flutter version requirements

- Flutter SDK 3.0 or newer (stable channel recommended)
- Dart SDK >=3.0.0 <4.0.0 (comes bundled with Flutter)
- Web support enabled: `flutter config --enable-web`

## Project structure

```
kirthan_flutter_portfolio/
├── .github/
│   └── workflows/
│       └── deploy.yml        # GitHub Actions: build + deploy to Pages
├── lib/
│   ├── main.dart             # App entry point, theme, routes
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── about_screen.dart
│   │   ├── projects_screen.dart
│   │   └── contact_screen.dart
│   ├── widgets/
│   │   ├── portfolio_nav_bar.dart   # Responsive nav bar (hamburger on mobile)
│   │   ├── section_card.dart        # Reusable card + skill chip
│   │   └── project_card.dart
│   └── data/
│       ├── projects_data.dart
│       └── skills_data.dart
├── assets/
│   └── images/
│       └── profile.jpg
├── web/
│   ├── index.html
│   ├── manifest.json
│   ├── favicon.png
│   └── icons/
├── test/
│   └── widget_test.dart
├── analysis_options.yaml
├── pubspec.yaml
├── .gitignore
└── README.md
```

Note: platform folders such as `android/`, `ios/`, `linux/`, `macos/`, and
`windows/` are not included here because this project targets **Flutter
Web only**. If you ever want to also build for those platforms, run:

```
flutter create .
```

inside the project folder — Flutter will generate those platform folders
automatically without touching your existing `lib/` code.

## How to install dependencies

```
flutter pub get
```

## How to run locally (in Chrome)

```
flutter run -d chrome
```

## How to build for the web

```
flutter build web --release
```

The compiled site is written to `build/web`.

## GitHub Pages deployment

This repo includes `.github/workflows/deploy.yml`, which automatically:

1. Sets up Flutter on GitHub's server.
2. Runs `flutter pub get`.
3. Runs `flutter build web --release --base-href "/kirthan_flutter_portfolio/"`
   (the base href matches this repository's name so asset paths resolve
   correctly once hosted at `https://codemaster917.github.io/kirthan_flutter_portfolio/`).
4. Uploads and deploys the `build/web` folder to GitHub Pages.

**You do need to enable GitHub Pages once, manually, the first time:**

1. Push this project to your GitHub repository.
2. Go to your repository → **Settings** → **Pages**.
3. Under "Build and deployment" → "Source", select **GitHub Actions**.
4. That's it — every push to `main` will now redeploy automatically via
   the workflow.

Full beginner steps are provided separately below this file's contents in
the chat response.
