#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'www.ogarcia.dev' > CNAME

git init
git add -A
git commit -m 'Deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:ogarcia2511/ogarcia2511.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -