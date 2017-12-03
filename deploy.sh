#!/bin/sh

setup_git() {
  git config --global user.email "er.sagarpanda@gmail.com"
  git config --global user.name "Sagar Panda"
}

upload_files() {
  # git remote add origin-pages https://${GH_TOKEN}@github.com/sagarpanda/test-travis.git > /dev/null 2>&1
  # git push --quiet --set-upstream origin-pages gh-pages
  git remote add origin-pages https://${GH_TOKEN}@github.com/sagarpanda/test-travis.git > /dev/null 2>&1
  git subtree split --branch gh-pages --prefix dist
  git push -f origin-pages gh-pages:gh-pages
  git branch -D gh-pages
}

setup_git
upload_files
