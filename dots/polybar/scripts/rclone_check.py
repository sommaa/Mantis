#!/usr/bin/env python3
import subprocess
import os
import sys

#directories
home_directory = os.path.expanduser( '~' )
dest_rclone = "/Documents/Rclone"

# executing bash command
bashCommand = "rclone check gdrive: " + home_directory + dest_rclone
out = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
stdout,stderr = out.communicate()

# decoding the output
raw = stdout.decode("utf-8")
raw_split = raw.split()

# writing outputs
if "missing" in raw:
    idx_missing = raw_split.index(("missing"))
    sys.stdout.write('  ' + f'{raw_split[idx_missing-2]}')
else:
    sys.stdout.write('  0' )

if "differences" in raw:
    idx_diff = raw_split.index("differences")
    sys.stdout.write(' 󰏫 'f'{raw_split[idx_diff-1]}')
    sys.stdout.write(' ')


