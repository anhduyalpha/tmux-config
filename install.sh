#!/usr/bin/env bash
# ──────────────────────────────────────────────
# Install tmux config - Warm Orange & Brown Theme
# ──────────────────────────────────────────────

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TMUX_CONF="$HOME/.tmux.conf"

echo ""
echo "  ╔══════════════════════════════════════╗"
echo "  ║  Tmux Warm Theme Installer           ║"
echo "  ╚══════════════════════════════════════╝"
echo ""

# Backup existing config
if [ -f "$TMUX_CONF" ]; then
    BACKUP="$TMUX_CONF.bak.$(date +%Y%m%d%H%M%S)"
    echo "  [backup] $TMUX_CONF -> $BACKUP"
    cp "$TMUX_CONF" "$BACKUP"
fi

# Symlink the config
echo "  [link]  $SCRIPT_DIR/tmux.conf -> $TMUX_CONF"
ln -sf "$SCRIPT_DIR/tmux.conf" "$TMUX_CONF"

# Reload if tmux is running
if tmux list-sessions &>/dev/null; then
    echo "  [reload] Reloading tmux config..."
    tmux source-file "$TMUX_CONF"
    echo ""
    echo "  Done! Config reloaded in running tmux."
else
    echo ""
    echo "  Done! Start tmux to see the new theme."
fi

echo ""
echo "  Tip: Press Ctrl+A then r inside tmux to reload anytime."
echo ""
