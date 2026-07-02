# Red Digital Clock — Android APK

Full-screen digital clock with authentic seven-segment LCD display (DSEG7 font),
red digits on a pure black background. Optimised for 720×720 screens.

## Features
- DSEG7 Classic Bold — authentic 7-segment LCD digital font
- Ghost segments behind digits for real LCD panel feel
- Full-screen immersive mode (no status/nav bar)
- Red HH:MM time display
- Red date line: DAY · DD MON YYYY
- Screen kept on while app is open
- No third-party library dependencies
- minSdk 21 (Android 5.0+)

## ⚠️ First: Install the Font

The DSEG7 font file must be placed at:
```
app/src/main/res/font/dseg7classic_bold.ttf
```

**Option A — run the setup script (macOS/Linux):**
```bash
chmod +x setup.sh && ./setup.sh
```

**Option B — download manually:**
1. Go to https://github.com/keshikan/DSEG/releases
2. Download `fonts-DSEG_v046.zip`
3. Extract `DSEG7Classic-Bold.ttf`
4. Copy it to `app/src/main/res/font/dseg7classic_bold.ttf`

## How to Build the APK

### Android Studio (recommended)
1. Install [Android Studio](https://developer.android.com/studio)
2. Run `./setup.sh` first (or install the font manually — see above)
3. Open this folder as a project and let Gradle sync
4. Click **Build → Build Bundle(s)/APK(s) → Build APK(s)**
5. APK: `app/build/outputs/apk/debug/app-debug.apk`

### Command Line
```bash
./setup.sh          # install font first
./gradlew assembleDebug
# APK → app/build/outputs/apk/debug/app-debug.apk
```

### Install on Device
```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

## Project Structure
```
ClockApp/
├── setup.sh                              ← Download font here first!
├── app/src/main/
│   ├── java/com/redclock/app/
│   │   └── MainActivity.java             ← Clock logic
│   ├── res/
│   │   ├── font/
│   │   │   ├── dseg7.xml                 ← Font descriptor
│   │   │   └── dseg7classic_bold.ttf     ← ⚠️ Download separately
│   │   ├── layout/activity_main.xml      ← UI layout
│   │   └── values/{strings,styles}.xml
│   └── AndroidManifest.xml
├── app/build.gradle
├── build.gradle
└── settings.gradle
```

## Customisation
| Change | Where |
|---|---|
| Time size | `activity_main.xml` → `android:textSize` on `tv_time` |
| Red colour | `activity_main.xml` → `android:textColor="#FF1A1A"` |
| 12h format | `MainActivity.java` → `"HH:mm"` → `"hh:mm"` |
| Show seconds | `MainActivity.java` → `"HH:mm"` → `"HH:mm:ss"` |
