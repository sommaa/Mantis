#!/usr/bin/env python3
import os
import subprocess
import sys

#directories
home_directory = os.path.expanduser( '~' )
dest_git = "/Documents/GitHub/"

bashCommand = "ls " + home_directory + dest_git
out = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
stdout,stderr = out.communicate()

# decoding the output
raw = stdout.decode("utf-8")
raw_split = raw.split()
mod = 0
new = 0

for dir in raw_split:
    bashCommand = "git --git-dir=" + home_directory + dest_git + dir + "/.git" + " --work-tree="
    bashCommand = bashCommand + home_directory + dest_git + dir + " status --porcelain=v1"
    out = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    stdout,stderr = out.communicate()

    # decoding the output
    out = stdout.decode("utf-8")
    out = out.split()
    mod = mod + out.count("M")
    new = new + out.count("??")

sys.stdout.write('   ' + f'{new}')
sys.stdout.write(' ')
sys.stdout.write('󰏫 'f'{mod}')

