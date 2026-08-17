#!/usr/bin/env bash

# Exit immediately if any command returns a non-zero status code
set -e

echo "=== [HARNESS] Validating Environment Configuration ==="
if [ ! -f "main.py" ]; then
    echo "❌ Error: main.py not found in current directory tree."
    exit 1
fi

echo "=== [HARNESS] Setting up Sandbox Requirements ==="
# Ensure a virtual environment exists if preferred, or run directly
# pip install -r requirements.txt --quiet

echo "=== [HARNESS] Executing Zero-API Decentralized Memory Mesh ==="
echo "------------------------------------------------------------"
python3 main.py
echo "------------------------------------------------------------"
echo "=== [HARNESS] Execution Run Complete ==="
