#!/bin/sh

setup_git() {
  git config --global user.email "er.sagarpanda@gmail.com"
  git config --global user.name "Sagar Panda"
}

commit_website_files() {
  git checkout -b gh-pages
  # git add . *.html
  # git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://e62ad3709db4ccb3ee2c02f7b8127dbe026bac01@github.com/sagarpanda/test-travis.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages gh-pages
}

setup_git
commit_website_files
upload_files
