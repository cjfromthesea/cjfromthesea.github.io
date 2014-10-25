#!/bin/sh

markdown posts.md > posts.html
sed -e '/<POSTS>/{r posts.html' -e 'd}' templ.html | tee index.html >/dev/null
rm posts.html
