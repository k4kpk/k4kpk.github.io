#!/bin/bash
source /Users/kevin/.bash_profile
cd /Users/kevin/Sync/Sites/k4kpk.github.io
chruby 2.4.2
bundle exec jekyll serve --watch --incremental
