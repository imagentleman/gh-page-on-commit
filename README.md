# gh-page-on-commit
An example setup to generate a github page automatically after each commit using the travis continuous integration

This repo provides an example project that has a "build" step (gulp command) that generates a static file in a folder different to source, and the 2 files (deploy.sh and .travis.yml) required for travis to execute the build and push it to github to generate the page when a commit happens (by default travis tries to run the build if it finds the .travis.yml configuration file on the branch).

## Instructions

Basically this post (https://medium.com/@nthgergo/publishing-gh-pages-with-travis-ci-53a8270e87db), but with a few tweaks and a gulp script as an example.

### Github
* Visit https://github.com/settings/tokens
* Create a personal token with the "public_repo" scope (we need it to be able to push to the gh-pages branch and generate the github page).

### Travis
* Go to https://travis-ci.org and sign in with your Github account.
* Add your repository (currently using the plus sign on the left).
* Go to ```More Options -> Settings``` and create an env variable named "TOKEN" (uppercase and without the quotes) with the value of your personal token (created on the step before).

And that's it. Just modify deploy.sh with your own terminal commands (same you'd use locally to create the static files).
