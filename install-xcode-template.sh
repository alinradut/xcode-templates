#!/usr/bin/env sh

# Configuration
XCODE_TEMPLATE_DIR=$HOME'/Library/Developer/Xcode/Templates/File Templates'
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Copy file templates into the local RIBs template directory
xcodeTemplate () {
  echo "==> Copying up Xcode file templates..."

  mkdir -p "$XCODE_TEMPLATE_DIR"

  cp -R $SCRIPT_DIR/Templates/* "$XCODE_TEMPLATE_DIR"
  }

xcodeTemplate

echo "==> Template files have been installed and they are now available in the 'New File...' dialog in Xcode."
