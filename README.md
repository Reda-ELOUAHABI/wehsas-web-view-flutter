# reda_elouahabi_portfolio

This is Wehsas

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Steps 4 publish:
## APP ICON
- Add ICON to pubspec.yaml:

``flutter_launcher_icons: ^0.9.2``

``
flutter_icons:
android: true
ios: true
image_path: "Assets/logo.png"
``

- Create Assets folder with the wanted icon .Png + add it to pubspec also

- run the commands:

``flutter clean``
``flutter pub get``
``flutter pub run flutter_launcher_icons:main``

## APP NAME
- apply rename package :
run commands:

``flutter pub global activate rename``
``flutter pub global run rename --appname "THE WANTED NAME"``
``flutter pub global run rename --bundleId (domaine.ProjectName)com.wehsas (== reversed domaine.ProjectName)``

## PLAY STORE KEYS ..

- create a file: key.properties inside ./android
fill it :
``storePassword=redaeLOUAHABI1998 keyPassword=redaeLOUAHABI1998 keyAlias=upload storeFile=<location of the key store file, such as /Users/<user name>/upload-keystore.jks>``


- make sure that they you don't have any previous key files in c:/
- RUN as Administrator on cmd:
``keytool -genkey -v -keystore c:\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload``
-then enter the chosen Password
-move the generated file to android/app: and then change key.properties

`storeFile=../app/upload-keystore.jks `
now we configure:
android/add/build.gradle:
https://docs.flutter.dev/deployment/android#configure-signing-in-gradle

by modifyng two parts on it : add part before android{},
replace part in buildType{} by signingConfigs{} and buildType{},

Now run `flutter clean` then `flutter build appbundle`

//then create app on console ,,,, No need for tuto I think

////////////////////use the same project in the future:
make sure : android minsdk>21
make sure that every manifest file of the three has internet connection Permission
///////////////////THEN///////////////////////
PS E:\Mobile Project\Wehsas> flutter pub global run rename --bundleId com.wehsas
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeIosBundleId (package:rename/file_repository.dart:87:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 IOS BundleIdentifier changed successfully to : com.wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeMacOsBundleId (package:rename/file_repository.dart:114:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ macOS BundleId could not be changed because,
│ ⚠️ The related file could not be found in that path: .\macos\Runner\Configs\AppInfo.xcconfig
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeAndroidBundleId (package:rename/file_repository.dart:172:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 Android bundleId changed successfully to : com.wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeLinuxBundleId (package:rename/file_repository.dart:200:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ Linux BundleId could not be changed because,
│ ⚠️ The related file could not be found in that path: .\linux\CMakeLists.txt
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
PS E:\Mobile Project\Wehsas> flutter pub global run rename --appname "Wehsas"
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeIosAppName (package:rename/file_repository.dart:240:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 IOS appname changed successfully to : Wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeMacOsAppName (package:rename/file_repository.dart:249:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ macOS AppName could not be changed because,
│ ⚠️ The related file could not be found in that path: .\macos\Runner\Configs\AppInfo.xcconfig
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeAndroidAppName (package:rename/file_repository.dart:290:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 Android appname changed successfully to : Wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeLinuxAppName (package:rename/file_repository.dart:317:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ Linux AppName could not be changed because,
│ ⚠️ The related file could not be found in that path: .\linux\CMakeLists.txt
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeWebAppName (package:rename/file_repository.dart:398:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 Windows appname changed successfully to : Wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
PS E:\Mobile Project\Wehsas> flutter clean
Deleting build... 322ms
Deleting .dart_tool... 8ms
Deleting .packages... 2ms
Deleting Generated.xcconfig... 1ms
Deleting flutter_export_environment.sh... 1ms
Deleting .flutter-plugins-dependencies... 0ms
Deleting .flutter-plugins... 0ms
PS E:\Mobile Project\Wehsas> flutter pub run flutter_launcher_icons:main
No .dart_tool\package_config.json file found, please run "flutter pub get".

Starting with Dart 2.7, the package_config.json file configures resolution of package import URIs; run "flutter pub get" to generate it.
pub finished with exit code 65
PS E:\Mobile Project\Wehsas> flutter pub get
Running "flutter pub get" in Wehsas... 9.6s
PS E:\Mobile Project\Wehsas> flutter pub run flutter_launcher_icons:main
════════════════════════════════════════════
FLUTTER LAUNCHER ICONS (v0.9.1)
════════════════════════════════════════════

• Creating default icons Android
• Overwriting the default Android launcher icon with a new icon
• Overwriting default iOS launcher icon with new icon

✓ Successfully generated launcher icons
PS E:\Mobile Project\Wehsas> flutter pub global run rename --bundleId com.wehsas
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeIosBundleId (package:rename/file_repository.dart:87:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 IOS BundleIdentifier changed successfully to : com.wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeMacOsBundleId (package:rename/file_repository.dart:114:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ macOS BundleId could not be changed because,
│ ⚠️ The related file could not be found in that path: .\macos\Runner\Configs\AppInfo.xcconfig
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeAndroidBundleId (package:rename/file_repository.dart:172:12)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ 💡 Android bundleId changed successfully to : com.wehsas
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
│ #0 FileRepository.changeLinuxBundleId (package:rename/file_repository.dart:200:14)
│ #1 <asynchronous suspension>
├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄
│ ⚠️ Linux BundleId could not be changed because,
│ ⚠️ The related file could not be found in that path: .\linux\CMakeLists.txt
│ ⚠️
└───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
PS E:\Mobile Project\Wehsas> flutter clean
Deleting .dart_tool... 31ms
Deleting .packages... 6ms
Deleting Generated.xcconfig... 2ms
Deleting flutter_export_environment.sh... 5ms
Deleting .flutter-plugins-dependencies... 2ms
Deleting .flutter-plugins... 2ms
PS E:\Mobile Project\Wehsas> flutter pub get
Running "flutter pub get" in Wehsas... 4.5s
PS E:\Mobile Project\Wehsas> flutter run
Launching lib\main.dart on M2003J15SC in debug mode...
Running Gradle task 'assembleDebug'... |
Flutter run key commands.
r Hot reload.
R Hot restart.
h List all available interactive commands.
d Detach (terminate "flutter run" but leave application running).
c Clear the screen
q Quit (terminate the application on the device).

Running with sound null safety

An Observatory debugger and profiler on M2003J15SC is available at: http://127.0.0.1:27074/dvks7bpu57o=/
The Flutter DevTools debugger and profiler on M2003J15SC is available at: http://127.0.0.1:9101?uri=http://127.0.0.1:27074/dvks7bpu57o=/
I/WebViewFactory( 9815): Loading com.google.android.webview version 97.0.4692.70 (code 469207033)
