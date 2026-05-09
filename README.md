# 🎨 Tmux Warm Orange & Brown Theme

Cấu hình tmux với tone màu cam ấm và nâu, tối ưu cho coding và terminal daily use.

## Cài đặt

```bash
cd ~/tmux-config
./install.sh
```

Script sẽ:
- Backup config cũ (nếu có)
- Symlink tmux.conf vào ~/.tmux.conf
- Auto-reload nếu tmux đang chạy

## Phím tắt chính

| Phím | Chức năng |
|------|-----------|
| `F7` | Prefix (thay Ctrl+B) |
| `F7 + r` | Reload config |
| `F7 + \|` | Split ngang |
| `F7 + -` | Split dọc |
| `F7 + h/j/k/l` | Di chuyển pane (vim) |
| `F7 + H/J/K/L` | Resize pane |
| `Alt+1..9` | Chuyển window |
| `F7 + c` | New window (same path) |
| `F7 + Enter` | Copy mode (vi) |
| `F7 + {` / `F7 + }` | Previous/Next window |

## Plugins

Sử dụng [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager):

```bash
# Cài TPM (nếu chưa có)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Cài plugins (trong tmux)
F7 + I
```

## Sửa đổi theme

Chỉnh sửa file `tmux.conf`, section "Color Palette":

```bash
# Black/Brown tones
bg_dark="#1a1410"        # Nền tối nhất
bg_medium="#2d2319"      # Nền trung bình
bg_light="#3d2e1f"       # Nền sáng hơn
bg_highlight="#4d3a28"   # Highlight

# Orange tones
orange="#c47820"         # Cam chính
orange_bright="#e89a3c"  # Cam sáng
orange_light="#f5b858"   # Cam nhạt

# Text
text_normal="#d4c4a8"    # Text thường
text_dim="#8a7a60"       # Text mờ
```

Sau khi sửa: `F7 + r` trong tmux để reload.

## Git Workflow

```bash
cd ~/tmux-config

# Xem thay đổi
git status
git diff

# Commit
git add -A
git commit -m "Describe your change"

# Revert nếu cần
git log --oneline
git checkout HEAD~1 -- tmux.conf
```

## Yêu cầu

- tmux >= 3.0
- Terminal hỗ trợ 256 color hoặc true color
