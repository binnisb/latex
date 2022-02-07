#!/bin/sh -l

find . -name *.tex -exec latexmk -pdf {} \;
