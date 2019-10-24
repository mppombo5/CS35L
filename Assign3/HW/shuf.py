#!/usr/bin/env python3

from argparse import ArgumentParser
import sys, random

class randfile:
    def __init__(self, filename):
        randFile = open(filename, 'r')
        self.lines = randFile.readlines()
        randFile.close()

    def chooseline(self):
        return random.choice(self.lines)

def main():

    # initialize filename: make it none if - and input file aren't used, has to be none or - for stdin to be used
    filename=None

    parser = ArgumentParser(description="Print some random lines from a file.")

    inputSrc = parser.add_mutually_exclusive_group()

    inputSrc.add_argument('filename', type=open, nargs=1, help="read lines from filename, or standard input if none is specified.")

    inputSrc.add_argument('--', '-', type=open, nargs=0, dest='filename', metavar='stdin', help="read lines from standard input")

    parser.add_argument('-i', '--input-range', type=str, action='store', nargs=1, dest='inputRange', help="""-i, --input-range=LO-HI
        treat each number LO through HI as an input line""")

    parser.add_argument('-n', '--head-count', type=int, action='store', nargs=1, dest='count', help="""-n, --head-count=COUNT
        output at most COUNT lines""")
    
    parser.add_argument('-r', '--repeat', type=bool, action='store_true', default=False, dest='repeat', help="""-r, --repeat
        output lines can be repeated""")

    parser.add_argument('--help', help="""--help
        display this help""")

    args = parser.parse_args()

    for arg in args:
        print(arg)


if __name__ == "__main__":
    main()
