# flutter_template

A template project for new Bitforge Flutter apps.

_Main-Goal 👍_: Start new and extendable Flutter Apps quickly.

_Non-Goal 👎_: A jack of all trades or a new Flutter framework.

This project is intentionally kept light both in code size & pubspec dependencies.

I've you wanna share code across projects, consider creating a https://pub.dev library.

Features:

- Quick Setup including app name & identifier, app icon, splashscreen etc.
- [Riverpod Architecture](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/) inspired by [@bizz84](https://github.com/bizz84)
- [Modular App Structure](https://codewithandrea.com/articles/flutter-project-structure/) aka Feature-First
- [Material 3](https://m3.material.io/) base theme with dark mode support
- [go_router](https://pub.dev/documentation/go_router/latest/index.html) with bottom navigation & deep linking support
- [riverpod](https://riverpod.dev/) basic examples for StateNotifier & dependency injection
- [dio](https://pub.dev/packages/dio) based REST API example for cute [shibe](https://shibe.online) images
- [share_plus](https://pub.dev/packages/share_plus) for sharing doge images
- [easy_localization](https://pub.dev/packages/easy_localization) translation ready
- [url_launcher](https://pub.dev/packages/url_launcher) to open browser links on all platforms
- [app_settings](https://pub.dev/packages/app_settings) to change app language via system settings

## Getting Started

1. Clone this repository

```
git clone https://github.com/bitforge/flutter_template.git appname
```

2. Rename app & identifier

```
flutter pub global activate rename
rename setAppName -v <YourAppName>
rename setBundleId -v ch.bitforge.<appname>
```

3. Rename dart package name

```
sed -i '' 's/flutter_template/your_new_name/g' pubspec.yaml
find lib -type f -print0 | xargs -0 sed -i '' 's/flutter_template/your_new_name/g'
```

4. Add your icon an splash image to `assets/images`. Then run:

```
dart run flutter_launcher_icons
dart run flutter_native_splash:create
```

5. Start a new history & initialize your GitHub repo:

```
rm -rf .git
git init
git commit -am "Initial commit"
git remote add origin git@github.com:<owner>/<repo_name>.git
git push -u origin main
```

6. Start hacking!

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
