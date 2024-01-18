# flutter_template

A template project for new Bitforge Flutter apps.

Maybe the best way to start a new mobile app project in the world. 🚀 🌑 ➡️ 🌕 🥂 🥇

👍 Main-Goal: Start new and extendable Flutter Apps quickly

This is just a starting point for new apps, not a framework.

It's intentionally kept light both in code size & package dependencies.

I've you wanna share code across projects, please consider creating a library instead.

Features:

- Quick Setup including app name & identifier, app icon, splashscreen etc.
- [Riverpod Architecture](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/) inspired by [@bizz84](https://github.com/bizz84)
- [Modular App Structure](https://codewithandrea.com/articles/flutter-project-structure/) aka Feature-First
- [Material 3](https://m3.material.io/) base theme with dark mode support
- [go_router](https://pub.dev/documentation/go_router/latest/index.html) with bottom navigation & deep linking support
- [riverpod](https://riverpod.dev/) basic examples for StateNotifier & dependency injection
- [dio](https://pub.dev/packages/dio) based REST API example for cute [shibe](https://shibes.online) images
- [share_plus](https://pub.dev/packages/share_plus) for sharing doge images
- [easy_localization](https://pub.dev/packages/easy_localization) translation ready
- [url_launcher](https://pub.dev/packages/url_launcher) to open browser links on all platforms
- [app_settings](https://pub.dev/packages/app_settings) to change language via system settings

## Getting Started

1. Clone this repository
2. Rename this app

```
flutter pub global activate rename
rename setAppName -v AppName
rename setBundleId -v ch.bitforge.appname
```

3. Rename dart package name

```
sed -i '' 's/flutter_template/your_new_name/g' pubspec.yaml
find lib -type f -print0 | xargs -0 sed -i '' 's/flutter_template/your_new_name/g'
```

4. Disable platforms you don't need:

```
flutter config --no-enable-linux-desktop
flutter config --no-enable-macos-desktop
rm -rf linux
rm -rf macos
```

5. Add your Icon to `assets/icons` and edit `flutter_launcher_icons.yaml`. Then run:

```
dart run flutter_launcher_icons
```

6. Start hacking!

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
