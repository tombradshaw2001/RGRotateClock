#!/usr/bin/env bash
# setup.sh — Run this ONCE before opening in Android Studio or running ./gradlew
# Downloads the DSEG7 Classic Bold digital font into res/font/

FONT_URL="https://github.com/keshikan/DSEG/releases/download/v0.46/fonts-DSEG_v046.zip"
FONT_DIR="app/src/main/res/font"
FONT_FILE="$FONT_DIR/dseg7classic_bold.ttf"

if [ -f "$FONT_FILE" ]; then
  echo "Font already present: $FONT_FILE"
  exit 0
fi

mkdir -p "$FONT_DIR"

echo "Downloading DSEG font package..."
curl -L "$FONT_URL" -o /tmp/dseg_fonts.zip

echo "Extracting DSEG7Classic-Bold.ttf..."
unzip -j /tmp/dseg_fonts.zip "*/DSEG7Classic-Bold.ttf" -d /tmp/dseg_extracted/

cp "/tmp/dseg_extracted/DSEG7Classic-Bold.ttf" "$FONT_FILE"
echo "Font installed at: $FONT_FILE"
