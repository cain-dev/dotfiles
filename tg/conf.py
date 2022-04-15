"""
Every parameter (except for CONFIG_FILE) can be
overwritten by external config file
"""
import os
import platform
import runpy
from typing import Dict, Optional

_os_name = platform.system()
_darwin = "Darwin"
_linux = "Linux"


# should start with + (plus) and contain country code
PHONE = ""

FILE_PICKER_CMD = "nnn -p {file_path}"

#NOTIFY_CMD = "/usr/bin/mako -title {title} -subtitle {subtitle} -message {msg} -appIcon {icon_path}"

# You can customize chat and msg flags however you want.
# By default words will be used for readability, but you can make
# it as simple as one letter flags like in mutt or add emojies
CHAT_FLAGS = {
    "online": "●",
    "pinned": "P",
    "muted": "M",
    # chat is marked as unread
    "unread": "U",
    # last msg haven't been seen by recipient
    "unseen": "✓",
    "secret": "🔒",
    "seen": "✓✓",  # leave empty if you don't want to see it
}

MSG_FLAGS = {
    "selected": "*",
    "forwarded": "F",
    "new": "N",
    "unseen": "U",
    "edited": "E",
    "pending": "...",
    "failed": "💩",
    "seen": "✓✓",  # leave empty if you don't want to see it
}

# to make one color for all users
USERS_COLORS = (10,)

MAILCAP_FILE = os.path.expanduser("~/.config/tg/mailcap")

DOWNLOAD_DIR = os.path.expanduser("~/Downloads/")  # copy file to this dir


if _os_name == _linux:
    # for more info see https://trac.ffmpeg.org/wiki/Capture/ALSA
    VOICE_RECORD_CMD = (
        "ffmpeg -use_wallclock_as_timestamps 1 -f pulse -i alsa_input.pci-0000_00_14.2.analog-stereo -c:a libopus -b:a 32k {file_path}"
    )
else:
    VOICE_RECORD_CMD = (
        "ffmpeg -f avfoundation -i ':0' -c:a libopus -b:a 32k {file_path}"
    )

NOTIFY_CMD = "notify-send -u low -i {icon_path} {title} {msg}"

