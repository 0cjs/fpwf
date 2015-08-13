Overview
--------

Source code and build system for the _Functional Programming With
Friends_ website, including our blog.


Prerequisites
-------------

Though we hope one day to include in this repo everything needed to do
the build, at the moment you need to have a reasonably recent version
of Jekyll available on your system. If you do not have this, it's most
easily installed with the following commands:

    sudo apt-get install ruby1.9.1-dev nodejs
    gem install -V --user-install jekyll

(`ruby1.9.1-dev` is required for gem to be able to build native extensions.
`nodejs` is required by Jekyll.)


Building
--------

The `jekyll` script in the top-level directory will run the jekyll
program from the GEM you installed above. We due this because Jekyll
doesn't read the _plugins directory after loading. (This may be a bug.)

    ./jeckyll serve -D -w

will do a build and start a local web server; on there you can look up
`ref.html` for the developer quick-ref card full of further information.
(Typically this is <http://127.0.0.1:4000/ref.html>.)


Copyright
---------

This site is Copyright 2015 by the individual contributors.
Their names and e-mail addresses can be found in the Git logs.
