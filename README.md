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
program from the GEM you installed above. It builds into the
`.build/gh-pages/` directory.
