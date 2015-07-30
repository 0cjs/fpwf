Overview
--------

Source code and build system for the _Functional Programming with Friends_
website.

The output of this build will be put in to a checkout of the gh-pages
branch of this repo, which will be automatically checked out under
.build/gh-pages if necessary.

Prerequisites
-------------

Though we hope one day to include in this repo everything needed to do
the build, at the moment you need to have a reasonably recent version
of Jekyll available on your system. If you do not have this, it's most
easily installed with the following commands:

    sudo aptitude install nodejs
    gem install -V --user-install jekyll

Building
--------

The `jekyll` script in the top-level directory will run the jekyll
program from the GEM you installed above. It builds the site from
the `src` directory into the `.build/gh-pages/` directory. Typically,
you'd probably want to run `./jekyll server --watch` (adding
`-H 0.0.0.0` as well, if you want to listen on the external interfaces
as well as localhost), make changes, and keep reloading the test
page until you're happy with the results.

Releasing
---------

Github.io serves data checked out from the `gh-pages` branch of this
repository. Thus, we need to take the static web site we built under
`.build/gh-pages/` and commit it to the branch. The `commit-build`
script does this by creating a new tree object in this repository
consisting of the contents of the `.build/gh-pages` directory and
then creating a new commit at the end of the `gh-pages` branch based
on that tree.

(Thanks to Nishant, the script does some rather clever work so that
we don't actually need to have a separate repository and working
copy for this operation. Instead, we use low-level, or so-called
"plumbing" git commands to do the operations directly to the current
repo, without disturbing the current (master) branch or working copy.)
