#!/bin/sh

rm -rf _site
jekyll build
(sleep 3; open http://localhost:4000/m23/) & 
jekyll serve
