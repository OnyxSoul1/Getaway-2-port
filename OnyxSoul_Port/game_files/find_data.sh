#!/bin/bash
echo "⛧ OnyxSoul — Find Unity Data"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

cd /workspaces/Getaway-2-port/REAL_PORT/game_files

echo "[1/3] Looking for Unity data folder..."
DATA_DIR=$(find . -type d -name "Data" | head -1)
if [ -n "$DATA_DIR" ]; then
    echo "✅ Data folder found: $DATA_DIR"
    ls -la "$DATA_DIR" | head -10
else
    echo "⚠️  Data folder not found."
fi

echo ""
echo "[2/3] Looking for Unity assets..."
ASSETS=$(find . -name "*.unity3d" -o -name "*.asset" | head -10)
if [ -n "$ASSETS" ]; then
    echo "✅ Unity assets found:"
    echo "$ASSETS"
else
    echo "⚠️  No Unity assets found."
fi

echo ""
echo "[3/3] Looking for main data..."
MAIN_DATA=$(find . -name "mainData" -o -name "sharedassets*" | head -5)
if [ -n "$MAIN_DATA" ]; then
    echo "✅ Main data found:"
    echo "$MAIN_DATA"
else
    echo "⚠️  Main data not found."
fi

echo ""
echo "✅ Done."
