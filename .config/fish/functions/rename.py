#!/usr/local/bin/python3

from os import walk, rename
import sys, getopt, re

files = []
directories = []
for (dirpath, dirnames, filenames) in walk('./'):
    files.extend(filenames)
    directories.extend(dirnames)
    break

args = sys.argv[1:]
target = ''

try:
    opts, args = getopt.getopt(args,"t:")
except getopt.GetoptError:
    print('lowercase -t <target>')
    sys.exit(2)

if len(args) > 1 or len(args) <= 0:
    print('Please provide only a single argument.')
    sys.exit(2)

for opt, arg in opts:
    if opt == '-t':
        target = arg
        if target not in ('dirs', 'files', 'all'):
            print("Unrecognized target.")
            sys.exit(2)
    else:
        print("Unrecognized flag.")
        sys.exit(2)

target = args[0]

if target == 'dirs':
    for directory in directories:
        rename(directory, re.sub(" ", "_", directory.lower()))
elif target == 'files':
    for file in files:
        rename(file, re.sub(" ", "_", file.lower()))
elif target == 'both':
    for path in files + directories:
        rename(path, re.sub(" ", "_", path.lower()))




