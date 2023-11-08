# flutter_template

A template project for new Bitforge Flutter apps.

Maybe the best way to start any new (mobile) project in the world. 🚀 🌑 ➡️ 🌕 🥂 🥇

👍 Main-Goal: Start a new and extendable Flutter App quickly

👎 Non-Goal: Create an Engine or Framework with a 💩-load of dependencies

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
